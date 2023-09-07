package kotlin.jvm.internal;

import java.io.Serializable;
import w7.a;
import w7.b;
import w7.d;
import w7.e;
import w7.f;
import w7.g;
import w7.h;
import w7.i;
import w7.j;
import w7.k;
import w7.l;
import w7.m;
import w7.n;
import w7.o;
import w7.p;
import w7.q;
import w7.r;
import w7.s;
import w7.t;
import w7.u;
import w7.v;
import w7.w;

@Deprecated
public abstract class FunctionImpl
  implements kotlin.c, Serializable, a, l, p, q, r, s, t, u, v, w, b, w7.c, d, e, f, g, h, i, j, k, m, n, o
{
  private void checkArity(int paramInt)
  {
    if (getArity() != paramInt) {
      throwWrongArity(paramInt);
    }
  }
  
  private void throwWrongArity(int paramInt)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Wrong function arity, expected: ");
    localStringBuilder.append(paramInt);
    localStringBuilder.append(", actual: ");
    localStringBuilder.append(getArity());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public abstract int getArity();
  
  public Object invoke()
  {
    checkArity(0);
    return invokeVararg(new Object[0]);
  }
  
  public Object invoke(Object paramObject)
  {
    checkArity(1);
    return invokeVararg(new Object[] { paramObject });
  }
  
  public Object invoke(Object paramObject1, Object paramObject2)
  {
    checkArity(2);
    return invokeVararg(new Object[] { paramObject1, paramObject2 });
  }
  
  public Object invoke(Object paramObject1, Object paramObject2, Object paramObject3)
  {
    checkArity(3);
    return invokeVararg(new Object[] { paramObject1, paramObject2, paramObject3 });
  }
  
  public Object invoke(Object paramObject1, Object paramObject2, Object paramObject3, Object paramObject4)
  {
    checkArity(4);
    return invokeVararg(new Object[] { paramObject1, paramObject2, paramObject3, paramObject4 });
  }
  
  public Object invoke(Object paramObject1, Object paramObject2, Object paramObject3, Object paramObject4, Object paramObject5)
  {
    checkArity(5);
    return invokeVararg(new Object[] { paramObject1, paramObject2, paramObject3, paramObject4, paramObject5 });
  }
  
  public Object invoke(Object paramObject1, Object paramObject2, Object paramObject3, Object paramObject4, Object paramObject5, Object paramObject6)
  {
    checkArity(6);
    return invokeVararg(new Object[] { paramObject1, paramObject2, paramObject3, paramObject4, paramObject5, paramObject6 });
  }
  
  public Object invoke(Object paramObject1, Object paramObject2, Object paramObject3, Object paramObject4, Object paramObject5, Object paramObject6, Object paramObject7)
  {
    checkArity(7);
    return invokeVararg(new Object[] { paramObject1, paramObject2, paramObject3, paramObject4, paramObject5, paramObject6, paramObject7 });
  }
  
  public Object invoke(Object paramObject1, Object paramObject2, Object paramObject3, Object paramObject4, Object paramObject5, Object paramObject6, Object paramObject7, Object paramObject8)
  {
    checkArity(8);
    return invokeVararg(new Object[] { paramObject1, paramObject2, paramObject3, paramObject4, paramObject5, paramObject6, paramObject7, paramObject8 });
  }
  
  public Object invoke(Object paramObject1, Object paramObject2, Object paramObject3, Object paramObject4, Object paramObject5, Object paramObject6, Object paramObject7, Object paramObject8, Object paramObject9)
  {
    checkArity(9);
    return invokeVararg(new Object[] { paramObject1, paramObject2, paramObject3, paramObject4, paramObject5, paramObject6, paramObject7, paramObject8, paramObject9 });
  }
  
  public Object invoke(Object paramObject1, Object paramObject2, Object paramObject3, Object paramObject4, Object paramObject5, Object paramObject6, Object paramObject7, Object paramObject8, Object paramObject9, Object paramObject10)
  {
    checkArity(10);
    return invokeVararg(new Object[] { paramObject1, paramObject2, paramObject3, paramObject4, paramObject5, paramObject6, paramObject7, paramObject8, paramObject9, paramObject10 });
  }
  
  public Object invoke(Object paramObject1, Object paramObject2, Object paramObject3, Object paramObject4, Object paramObject5, Object paramObject6, Object paramObject7, Object paramObject8, Object paramObject9, Object paramObject10, Object paramObject11)
  {
    checkArity(11);
    return invokeVararg(new Object[] { paramObject1, paramObject2, paramObject3, paramObject4, paramObject5, paramObject6, paramObject7, paramObject8, paramObject9, paramObject10, paramObject11 });
  }
  
  public Object invoke(Object paramObject1, Object paramObject2, Object paramObject3, Object paramObject4, Object paramObject5, Object paramObject6, Object paramObject7, Object paramObject8, Object paramObject9, Object paramObject10, Object paramObject11, Object paramObject12)
  {
    checkArity(12);
    return invokeVararg(new Object[] { paramObject1, paramObject2, paramObject3, paramObject4, paramObject5, paramObject6, paramObject7, paramObject8, paramObject9, paramObject10, paramObject11, paramObject12 });
  }
  
  public Object invoke(Object paramObject1, Object paramObject2, Object paramObject3, Object paramObject4, Object paramObject5, Object paramObject6, Object paramObject7, Object paramObject8, Object paramObject9, Object paramObject10, Object paramObject11, Object paramObject12, Object paramObject13)
  {
    checkArity(13);
    return invokeVararg(new Object[] { paramObject1, paramObject2, paramObject3, paramObject4, paramObject5, paramObject6, paramObject7, paramObject8, paramObject9, paramObject10, paramObject11, paramObject12, paramObject13 });
  }
  
  public Object invoke(Object paramObject1, Object paramObject2, Object paramObject3, Object paramObject4, Object paramObject5, Object paramObject6, Object paramObject7, Object paramObject8, Object paramObject9, Object paramObject10, Object paramObject11, Object paramObject12, Object paramObject13, Object paramObject14)
  {
    checkArity(14);
    return invokeVararg(new Object[] { paramObject1, paramObject2, paramObject3, paramObject4, paramObject5, paramObject6, paramObject7, paramObject8, paramObject9, paramObject10, paramObject11, paramObject12, paramObject13, paramObject14 });
  }
  
  public Object invoke(Object paramObject1, Object paramObject2, Object paramObject3, Object paramObject4, Object paramObject5, Object paramObject6, Object paramObject7, Object paramObject8, Object paramObject9, Object paramObject10, Object paramObject11, Object paramObject12, Object paramObject13, Object paramObject14, Object paramObject15)
  {
    checkArity(15);
    return invokeVararg(new Object[] { paramObject1, paramObject2, paramObject3, paramObject4, paramObject5, paramObject6, paramObject7, paramObject8, paramObject9, paramObject10, paramObject11, paramObject12, paramObject13, paramObject14, paramObject15 });
  }
  
  public Object invoke(Object paramObject1, Object paramObject2, Object paramObject3, Object paramObject4, Object paramObject5, Object paramObject6, Object paramObject7, Object paramObject8, Object paramObject9, Object paramObject10, Object paramObject11, Object paramObject12, Object paramObject13, Object paramObject14, Object paramObject15, Object paramObject16)
  {
    checkArity(16);
    return invokeVararg(new Object[] { paramObject1, paramObject2, paramObject3, paramObject4, paramObject5, paramObject6, paramObject7, paramObject8, paramObject9, paramObject10, paramObject11, paramObject12, paramObject13, paramObject14, paramObject15, paramObject16 });
  }
  
  public Object invoke(Object paramObject1, Object paramObject2, Object paramObject3, Object paramObject4, Object paramObject5, Object paramObject6, Object paramObject7, Object paramObject8, Object paramObject9, Object paramObject10, Object paramObject11, Object paramObject12, Object paramObject13, Object paramObject14, Object paramObject15, Object paramObject16, Object paramObject17)
  {
    checkArity(17);
    return invokeVararg(new Object[] { paramObject1, paramObject2, paramObject3, paramObject4, paramObject5, paramObject6, paramObject7, paramObject8, paramObject9, paramObject10, paramObject11, paramObject12, paramObject13, paramObject14, paramObject15, paramObject16, paramObject17 });
  }
  
  public Object invoke(Object paramObject1, Object paramObject2, Object paramObject3, Object paramObject4, Object paramObject5, Object paramObject6, Object paramObject7, Object paramObject8, Object paramObject9, Object paramObject10, Object paramObject11, Object paramObject12, Object paramObject13, Object paramObject14, Object paramObject15, Object paramObject16, Object paramObject17, Object paramObject18)
  {
    checkArity(18);
    return invokeVararg(new Object[] { paramObject1, paramObject2, paramObject3, paramObject4, paramObject5, paramObject6, paramObject7, paramObject8, paramObject9, paramObject10, paramObject11, paramObject12, paramObject13, paramObject14, paramObject15, paramObject16, paramObject17, paramObject18 });
  }
  
  public Object invoke(Object paramObject1, Object paramObject2, Object paramObject3, Object paramObject4, Object paramObject5, Object paramObject6, Object paramObject7, Object paramObject8, Object paramObject9, Object paramObject10, Object paramObject11, Object paramObject12, Object paramObject13, Object paramObject14, Object paramObject15, Object paramObject16, Object paramObject17, Object paramObject18, Object paramObject19)
  {
    checkArity(19);
    return invokeVararg(new Object[] { paramObject1, paramObject2, paramObject3, paramObject4, paramObject5, paramObject6, paramObject7, paramObject8, paramObject9, paramObject10, paramObject11, paramObject12, paramObject13, paramObject14, paramObject15, paramObject16, paramObject17, paramObject18, paramObject19 });
  }
  
  public Object invoke(Object paramObject1, Object paramObject2, Object paramObject3, Object paramObject4, Object paramObject5, Object paramObject6, Object paramObject7, Object paramObject8, Object paramObject9, Object paramObject10, Object paramObject11, Object paramObject12, Object paramObject13, Object paramObject14, Object paramObject15, Object paramObject16, Object paramObject17, Object paramObject18, Object paramObject19, Object paramObject20)
  {
    checkArity(20);
    return invokeVararg(new Object[] { paramObject1, paramObject2, paramObject3, paramObject4, paramObject5, paramObject6, paramObject7, paramObject8, paramObject9, paramObject10, paramObject11, paramObject12, paramObject13, paramObject14, paramObject15, paramObject16, paramObject17, paramObject18, paramObject19, paramObject20 });
  }
  
  public Object invoke(Object paramObject1, Object paramObject2, Object paramObject3, Object paramObject4, Object paramObject5, Object paramObject6, Object paramObject7, Object paramObject8, Object paramObject9, Object paramObject10, Object paramObject11, Object paramObject12, Object paramObject13, Object paramObject14, Object paramObject15, Object paramObject16, Object paramObject17, Object paramObject18, Object paramObject19, Object paramObject20, Object paramObject21)
  {
    checkArity(21);
    return invokeVararg(new Object[] { paramObject1, paramObject2, paramObject3, paramObject4, paramObject5, paramObject6, paramObject7, paramObject8, paramObject9, paramObject10, paramObject11, paramObject12, paramObject13, paramObject14, paramObject15, paramObject16, paramObject17, paramObject18, paramObject19, paramObject20, paramObject21 });
  }
  
  public Object invoke(Object paramObject1, Object paramObject2, Object paramObject3, Object paramObject4, Object paramObject5, Object paramObject6, Object paramObject7, Object paramObject8, Object paramObject9, Object paramObject10, Object paramObject11, Object paramObject12, Object paramObject13, Object paramObject14, Object paramObject15, Object paramObject16, Object paramObject17, Object paramObject18, Object paramObject19, Object paramObject20, Object paramObject21, Object paramObject22)
  {
    checkArity(22);
    return invokeVararg(new Object[] { paramObject1, paramObject2, paramObject3, paramObject4, paramObject5, paramObject6, paramObject7, paramObject8, paramObject9, paramObject10, paramObject11, paramObject12, paramObject13, paramObject14, paramObject15, paramObject16, paramObject17, paramObject18, paramObject19, paramObject20, paramObject21, paramObject22 });
  }
  
  public Object invokeVararg(Object... paramVarArgs)
  {
    throw new UnsupportedOperationException();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.jvm.internal.FunctionImpl
 * JD-Core Version:    0.7.0.1
 */