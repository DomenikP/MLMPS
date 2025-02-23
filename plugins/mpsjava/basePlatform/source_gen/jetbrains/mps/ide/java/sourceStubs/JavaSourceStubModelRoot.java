package jetbrains.mps.ide.java.sourceStubs;

/*Generated by MPS */

import jetbrains.mps.extapi.persistence.FileBasedModelRoot;
import org.apache.log4j.Logger;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SModelId;
import jetbrains.mps.vfs.IFile;
import org.jetbrains.mps.openapi.persistence.Memento;
import jetbrains.mps.util.FileUtil;
import jetbrains.mps.vfs.FileSystem;
import java.util.List;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import java.util.ArrayList;
import java.util.Collection;
import jetbrains.mps.internal.collections.runtime.SetSequence;
import java.util.Set;
import java.util.HashSet;
import jetbrains.mps.java.stub.JavaPackageNameStub;
import jetbrains.mps.internal.collections.runtime.Sequence;
import jetbrains.mps.internal.collections.runtime.IWhereFilter;

public class JavaSourceStubModelRoot extends FileBasedModelRoot {
  private static final Logger LOG = Logger.getLogger(JavaSourceStubModelRoot.class);

  public JavaSourceStubModelRoot() {
    super(new String[]{SOURCE_ROOTS});
  }
  @Override
  public String getType() {
    return "java_source_stubs";
  }
  @Override
  public SModel getModel(SModelId id) {
    // TODO 
    return null;
  }
  protected MPSJavaSrcDataSource newDataSource(IFile dir) {
    return new MPSJavaSrcDataSource(dir, this);
  }
  @Override
  public void load(Memento memento) {
    super.load(memento);
    if (memento.get("path") == null) {
      return;
    }
    String path = FileUtil.stripLastSlashes(memento.get("path"));
    IFile file = FileSystem.getInstance().getFileByPath(path);
    if (file != null && file.getParent() != null) {
      path = file.getParent().getPath();
    }
    setContentRoot(path);
    List<String> files = filesForKind.get(SOURCE_ROOTS);
    files.add(memento.get("path"));
  }
  @Override
  public Iterable<SModel> loadModels() {
    List<SModel> result = ListSequence.fromList(new ArrayList<SModel>());
    final Collection<String> files = getFiles(SOURCE_ROOTS);
    for (String file : files) {
      ListSequence.fromList(result).addSequence(SetSequence.fromSet(getModels(FileSystem.getInstance().getFileByPath(file))));
    }
    return result;
  }
  private Set<SModel> getModels(IFile dir) {

    Set<SModel> models = SetSequence.fromSet(new HashSet<SModel>());

    MPSJavaSrcDataSource dataSource = newDataSource(dir);

    if (dataSource.hasJavaFiles()) {
      String pkg = dataSource.guessPackage();
      if (pkg != null) {
        JavaPackageNameStub packStub = new JavaPackageNameStub(pkg);
        // default package is not handled by MPS; classes in default pkg can be referenced only 
        // from the default pkg as well, but there are no models that correspond to it 
        if (!(packStub.isDefaultPackage())) {
          JavaSourceStubModelDescriptor model = new JavaSourceStubModelDescriptor(packStub.asModelReference(getModule().getModuleReference()), dataSource);
          SetSequence.fromSet(models).addElement(model);
        }
      } else {
        LOG.error("Could not create java source stub model for directory " + dir.getPath() + " (failed to guess package name)");
      }
    }

    // should be one line: dir.getChildren().where cannot be entered... 
    Iterable<IFile> children = dir.getChildren();
    Iterable<IFile> subDirs = Sequence.fromIterable(children).where(new IWhereFilter<IFile>() {
      public boolean accept(IFile it) {
        return it.isDirectory();
      }
    });

    for (IFile subDir : Sequence.fromIterable(subDirs)) {
      Set<SModel> set = getModels(subDir);
      SetSequence.fromSet(models).addSequence(SetSequence.fromSet(set));
    }

    return models;
  }
  @Override
  public boolean canCreateModel(String string) {
    return false;
  }
  @Override
  public SModel createModel(String string) {
    return null;
  }
}
