package kotlin.reflect.jvm;

import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.FunctionReference;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.KFunctionImpl;
import kotlin.reflect.jvm.internal.b;
import kotlin.reflect.jvm.internal.impl.descriptors.r0;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf.Function;
import kotlin.reflect.jvm.internal.impl.protobuf.n;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.MemberDeserializer;
import kotlin.reflect.jvm.internal.m;
import m8.a;
import n8.e;
import n8.i;
import w7.p;

@Metadata(bv={}, d1={""}, d2={"R", "Lkotlin/c;", "Lkotlin/reflect/g;", "a", "kotlin-reflection"}, k=2, mv={1, 7, 1})
public final class ReflectLambdaKt
{
  public static final <R> kotlin.reflect.g<R> a(kotlin.c<? extends R> paramc)
  {
    r.f(paramc, "<this>");
    Object localObject1 = (Metadata)paramc.getClass().getAnnotation(Metadata.class);
    if (localObject1 == null) {
      return null;
    }
    Object localObject2 = ((Metadata)localObject1).d1();
    int i = localObject2.length;
    boolean bool = true;
    if (i == 0) {
      i = 1;
    } else {
      i = 0;
    }
    if (i != 0) {
      localObject2 = null;
    }
    if (localObject2 == null) {
      return null;
    }
    Object localObject3 = i.j((String[])localObject2, ((Metadata)localObject1).d2());
    localObject2 = (n8.f)((Pair)localObject3).component1();
    localObject3 = (ProtoBuf.Function)((Pair)localObject3).component2();
    Object localObject4 = ((Metadata)localObject1).mv();
    if ((((Metadata)localObject1).xi() & 0x8) == 0) {
      bool = false;
    }
    localObject1 = new e((int[])localObject4, bool);
    localObject4 = paramc.getClass();
    paramc = ((ProtoBuf.Function)localObject3).getTypeTable();
    r.e(paramc, "proto.typeTable");
    paramc = (r0)m.h((Class)localObject4, (n)localObject3, (m8.c)localObject2, new m8.g(paramc), (a)localObject1, reflect.descriptor.1.INSTANCE);
    return new KFunctionImpl(b.d, paramc);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.reflect.jvm.ReflectLambdaKt
 * JD-Core Version:    0.7.0.1
 */