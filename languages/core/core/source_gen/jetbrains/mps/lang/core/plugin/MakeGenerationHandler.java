package jetbrains.mps.lang.core.plugin;

/*Generated by MPS */

import jetbrains.mps.generator.generationTypes.GenerationHandlerBase;
import jetbrains.mps.baseLanguage.closures.runtime._FunctionTypes;
import jetbrains.mps.smodel.resources.GResource;
import org.jetbrains.mps.openapi.module.SModule;
import org.jetbrains.mps.openapi.model.SModel;
import jetbrains.mps.generator.GenerationStatus;
import jetbrains.mps.smodel.IOperationContext;
import org.jetbrains.mps.openapi.util.ProgressMonitor;
import jetbrains.mps.project.AbstractModule;
import jetbrains.mps.smodel.tempmodel.TemporaryModels;

public class MakeGenerationHandler extends GenerationHandlerBase {
  private _FunctionTypes._return_P1_E0<? extends Boolean, ? super GResource> resourceHandler;
  public MakeGenerationHandler(_FunctionTypes._return_P1_E0<? extends Boolean, ? super GResource> resourceHandler) {
    this.resourceHandler = resourceHandler;
  }
  @Override
  public int estimateCompilationMillis() {
    return 0;
  }
  @Override
  public boolean handleOutput(SModule module, SModel descriptor, GenerationStatus status, IOperationContext context, ProgressMonitor helper) {
    return resourceHandler.invoke(new GResource(((AbstractModule) module), descriptor, null, status));
  }
  @Override
  public boolean canHandle(SModel descriptor) {
    return super.canHandle(descriptor) || TemporaryModels.isTemporary(descriptor);
  }
}
