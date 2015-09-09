/*
 * Copyright 2003-2011 JetBrains s.r.o.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package jetbrains.mps.textgen.trace;

import java.net.URL;

import jetbrains.mps.generator.TransientModelsModule;
import org.jetbrains.mps.openapi.module.SModule;
import jetbrains.mps.project.structure.modules.ModuleDescriptor;
import jetbrains.mps.project.AbstractModule;
import jetbrains.mps.project.SModuleOperations;
import jetbrains.mps.project.facets.JavaModuleOperations;
import jetbrains.mps.project.facets.JavaModuleFacet;
import jetbrains.mps.reloading.CommonPaths;

class JavaTraceInfoResourceProvider implements TraceInfoCache.TraceInfoResourceProvider {
  public JavaTraceInfoResourceProvider() {
  }

  @Override
  public URL getResource(SModule module, String resourceName) {
    ModuleDescriptor descriptor = ((AbstractModule) module).getModuleDescriptor();
    if(module instanceof TransientModelsModule) {
      SModule originalModule = ((TransientModelsModule) module).getOriginalModule();
      return JavaModuleOperations.createClassPathItem(originalModule.getFacet(JavaModuleFacet.class).getClassPath(), JavaTraceInfoResourceProvider.class.getName()).getResource(resourceName);
    }
    if (SModuleOperations.isCompileInMps(module) || (descriptor != null && !(descriptor.getAdditionalJavaStubPaths().isEmpty()))) {
      return JavaModuleOperations.createClassPathItem(module.getFacet(JavaModuleFacet.class).getClassPath(), JavaTraceInfoResourceProvider.class.getName()).getResource(resourceName);
    }
    if (SModuleOperations.isCompileInIdea(module)) {
      return CommonPaths.getMPSClassPath().getResource(resourceName);
    }
    return null;
  }
}
