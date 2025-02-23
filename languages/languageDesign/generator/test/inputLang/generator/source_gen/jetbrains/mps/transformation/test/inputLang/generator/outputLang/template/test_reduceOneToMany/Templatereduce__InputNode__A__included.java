package jetbrains.mps.transformation.test.inputLang.generator.outputLang.template.test_reduceOneToMany;

/*Generated by MPS */

import jetbrains.mps.generator.runtime.Generated;
import jetbrains.mps.generator.runtime.TemplateDeclarationBase;
import jetbrains.mps.generator.runtime.TemplateDeclarationWeavingAware;
import org.jetbrains.mps.openapi.model.SNodeReference;
import jetbrains.mps.smodel.SNodePointer;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.annotations.NotNull;
import jetbrains.mps.generator.runtime.TemplateExecutionEnvironment;
import jetbrains.mps.generator.runtime.TemplateContext;
import jetbrains.mps.generator.runtime.GenerationException;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import org.jetbrains.mps.openapi.model.SNodeAccessUtil;
import java.util.Collection;
import jetbrains.mps.generator.runtime.TemplateUtil;
import jetbrains.mps.generator.runtime.NodeWeaveFacility;

@Generated
public class Templatereduce__InputNode__A__included extends TemplateDeclarationBase implements TemplateDeclarationWeavingAware {
  public Templatereduce__InputNode__A__included() {
  }
  public SNodeReference getTemplateNode() {
    return new SNodePointer("r:eca8e1c7-93fd-4ddf-9db6-91f9c2320691(jetbrains.mps.transformation.test.inputLang.generator.outputLang.template.test_reduceOneToMany@generator)", "1892993302480251689");
  }
  protected SNode applyPart0(@NotNull final TemplateExecutionEnvironment environment, @NotNull final TemplateContext context) throws GenerationException {
    final SNode tnode1 = environment.createOutputNode(MetaAdapterFactory.getConcept(0x157a9668bf58417bL, 0x893e53d86388dc56L, 0x1164564a526L, "jetbrains.mps.transformation.test.outputLang.structure.OutputNode"));
    try {
      environment.nodeCopied(context, tnode1, "tpl/r:eca8e1c7-93fd-4ddf-9db6-91f9c2320691/1892993302480251692");
      SNodeAccessUtil.setProperty(tnode1, MetaAdapterFactory.getProperty(0x157a9668bf58417bL, 0x893e53d86388dc56L, 0x1164564a526L, 0x11645b5a797L, "text"), "child included #1");
    } finally {
    }
    return tnode1;
  }
  protected SNode applyPart1(@NotNull final TemplateExecutionEnvironment environment, @NotNull final TemplateContext context) throws GenerationException {
    final SNode tnode2 = environment.createOutputNode(MetaAdapterFactory.getConcept(0x157a9668bf58417bL, 0x893e53d86388dc56L, 0x1164564a526L, "jetbrains.mps.transformation.test.outputLang.structure.OutputNode"));
    try {
      environment.nodeCopied(context, tnode2, "tpl/r:eca8e1c7-93fd-4ddf-9db6-91f9c2320691/1892993302480277769");
      SNodeAccessUtil.setProperty(tnode2, MetaAdapterFactory.getProperty(0x157a9668bf58417bL, 0x893e53d86388dc56L, 0x1164564a526L, 0x11645b5a797L, "text"), "child included #2");
    } finally {
    }
    return tnode2;
  }
  public Collection<SNode> apply(@NotNull TemplateExecutionEnvironment environment, @NotNull TemplateContext context) throws GenerationException {
    return TemplateUtil.asList(applyPart0(environment, context), applyPart1(environment, context));
  }
  public Collection<SNode> weave(@NotNull TemplateExecutionEnvironment environment, @NotNull TemplateContext context, @NotNull SNode outputContextNode) throws GenerationException {
    SNode tnodepart0 = applyPart0(environment, context);
    SNodeReference weaveTf0 = new SNodePointer("r:eca8e1c7-93fd-4ddf-9db6-91f9c2320691(jetbrains.mps.transformation.test.inputLang.generator.outputLang.template.test_reduceOneToMany@generator)", "1892993302480251693");
    NodeWeaveFacility weaveSupport0 = environment.weaveNode(context, weaveTf0);
    weaveSupport0.weave(outputContextNode, MetaAdapterFactory.getContainmentLink(0x157a9668bf58417bL, 0x893e53d86388dc56L, 0x116455d922fL, 0x11645a94e4aL, "outputChild"), tnodepart0);
    SNode tnodepart1 = applyPart1(environment, context);
    SNodeReference weaveTf1 = new SNodePointer("r:eca8e1c7-93fd-4ddf-9db6-91f9c2320691(jetbrains.mps.transformation.test.inputLang.generator.outputLang.template.test_reduceOneToMany@generator)", "1892993302480277770");
    NodeWeaveFacility weaveSupport1 = environment.weaveNode(context, weaveTf1);
    weaveSupport1.weave(outputContextNode, MetaAdapterFactory.getContainmentLink(0x157a9668bf58417bL, 0x893e53d86388dc56L, 0x116455d922fL, 0x11645a94e4aL, "outputChild"), tnodepart1);
    return TemplateUtil.asList(tnodepart0, tnodepart1);
  }
}
