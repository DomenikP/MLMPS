package jetbrains.mps.workbench.findusages;

/*Generated by MPS */

import com.intellij.openapi.components.ApplicationComponent;
import org.jetbrains.mps.openapi.persistence.FindUsagesParticipant;
import java.util.Collection;
import org.jetbrains.mps.openapi.model.SModel;
import java.util.Set;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.util.Consumer;
import org.jetbrains.mps.openapi.model.SReference;
import jetbrains.mps.project.structure.ProjectStructureModule;
import jetbrains.mps.generator.TransientModelsModule;
import jetbrains.mps.project.structure.LanguageDescriptorModelProvider;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import org.jetbrains.mps.openapi.persistence.PersistenceFacade;
import org.jetbrains.mps.openapi.model.SModelReference;
import org.jetbrains.annotations.NotNull;
import jetbrains.mps.persistence.PersistenceRegistry;

/**
 * evgeny, 3/11/13
 */
public class InternalModelsFindUsagesParticipant implements ApplicationComponent, FindUsagesParticipant {
  @Override
  public void findUsages(Collection<SModel> scope, Set<SNode> nodes, Consumer<SReference> consumer, Consumer<SModel> processedConsumer) {
    boolean hasProjectModels = false;
    boolean hasTransientModels = false;
    for (SNode n : nodes) {
      SModel model = n.getModel();
      if (model instanceof ProjectStructureModule.ProjectStructureSModelDescriptor) {
        hasProjectModels = true;
      }
      if (model instanceof TransientModelsModule.TransientSModelDescriptor) {
        hasTransientModels = true;
      }
    }
    for (SModel model : scope) {
      if (model instanceof ProjectStructureModule.ProjectStructureSModelDescriptor) {
        if (!(hasProjectModels)) {
          processedConsumer.consume(model);
        }
      } else
      if (model instanceof TransientModelsModule.TransientSModelDescriptor) {
        if (!(hasTransientModels)) {
          processedConsumer.consume(model);
        }
      } else
      if (model instanceof LanguageDescriptorModelProvider.LanguageModelDescriptor) {
        // language descriptor models are empty 
        processedConsumer.consume(model);
      }
    }
  }
  @Override
  public void findInstances(Collection<SModel> scope, Set<SAbstractConcept> concepts, Consumer<SNode> consumer, Consumer<SModel> processedConsumer) {
    boolean hasProjectLanguageConcepts = false;
    for (SAbstractConcept n : concepts) {
      if (PersistenceFacade.getInstance().createModuleReference("86ef8290-12bb-4ca7-947f-093788f263a9(jetbrains.mps.lang.project)").getModuleName().equals(n.getLanguage().getQualifiedName())) {
        hasProjectLanguageConcepts = true;
      }
    }
    for (SModel model : scope) {
      if (model instanceof ProjectStructureModule.ProjectStructureSModelDescriptor) {
        if (!(hasProjectLanguageConcepts)) {
          processedConsumer.consume(model);
        }
      } else
      if (model instanceof LanguageDescriptorModelProvider.LanguageModelDescriptor) {
        // language descriptor models are empty 
        processedConsumer.consume(model);
      }
    }
  }
  @Override
  public void findModelUsages(Collection<SModel> scope, Set<SModelReference> modelReferences, Consumer<SModel> consumer, Consumer<SModel> processedConsumer) {
    for (SModel model : scope) {
      if (model instanceof ProjectStructureModule.ProjectStructureSModelDescriptor) {
        // project structure models have no imports 
        processedConsumer.consume(model);
      } else
      if (model instanceof LanguageDescriptorModelProvider.LanguageModelDescriptor) {
        // language descriptor models are empty 
        processedConsumer.consume(model);
      }
    }
  }
  @NotNull
  @Override
  public String getComponentName() {
    return this.getClass().getSimpleName();
  }
  @Override
  public void initComponent() {
    PersistenceRegistry.getInstance().addFindUsagesParticipant(this);
  }
  @Override
  public void disposeComponent() {
    PersistenceRegistry.getInstance().removeFindUsagesParticipant(this);
  }
}
