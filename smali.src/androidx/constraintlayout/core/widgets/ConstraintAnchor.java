package androidx.constraintlayout.core.widgets;

import androidx.constraintlayout.core.SolverVariable;
import androidx.constraintlayout.core.SolverVariable.Type;
import androidx.constraintlayout.core.c;
import androidx.constraintlayout.core.widgets.analyzer.h;
import androidx.constraintlayout.core.widgets.analyzer.n;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

public class ConstraintAnchor
{
  private HashSet<ConstraintAnchor> a = null;
  private int b;
  private boolean c;
  public final ConstraintWidget d;
  public final Type e;
  public ConstraintAnchor f;
  public int g = 0;
  int h = -2147483648;
  SolverVariable i;
  
  public ConstraintAnchor(ConstraintWidget paramConstraintWidget, Type paramType)
  {
    this.d = paramConstraintWidget;
    this.e = paramType;
  }
  
  public boolean a(ConstraintAnchor paramConstraintAnchor, int paramInt)
  {
    return b(paramConstraintAnchor, paramInt, -2147483648, false);
  }
  
  public boolean b(ConstraintAnchor paramConstraintAnchor, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    if (paramConstraintAnchor == null)
    {
      q();
      return true;
    }
    if ((!paramBoolean) && (!p(paramConstraintAnchor))) {
      return false;
    }
    this.f = paramConstraintAnchor;
    if (paramConstraintAnchor.a == null) {
      paramConstraintAnchor.a = new HashSet();
    }
    paramConstraintAnchor = this.f.a;
    if (paramConstraintAnchor != null) {
      paramConstraintAnchor.add(this);
    }
    this.g = paramInt1;
    this.h = paramInt2;
    return true;
  }
  
  public void c(int paramInt, ArrayList<n> paramArrayList, n paramn)
  {
    Object localObject = this.a;
    if (localObject != null)
    {
      localObject = ((HashSet)localObject).iterator();
      while (((Iterator)localObject).hasNext()) {
        h.a(((ConstraintAnchor)((Iterator)localObject).next()).d, paramInt, paramArrayList, paramn);
      }
    }
  }
  
  public HashSet<ConstraintAnchor> d()
  {
    return this.a;
  }
  
  public int e()
  {
    if (!this.c) {
      return 0;
    }
    return this.b;
  }
  
  public int f()
  {
    if (this.d.V() == 8) {
      return 0;
    }
    if (this.h != -2147483648)
    {
      ConstraintAnchor localConstraintAnchor = this.f;
      if ((localConstraintAnchor != null) && (localConstraintAnchor.d.V() == 8)) {
        return this.h;
      }
    }
    return this.g;
  }
  
  public final ConstraintAnchor g()
  {
    switch (a.a[this.e.ordinal()])
    {
    default: 
      throw new AssertionError(this.e.name());
    case 5: 
      return this.d.P;
    case 4: 
      return this.d.R;
    case 3: 
      return this.d.O;
    case 2: 
      return this.d.Q;
    }
    return null;
  }
  
  public ConstraintWidget h()
  {
    return this.d;
  }
  
  public SolverVariable i()
  {
    return this.i;
  }
  
  public ConstraintAnchor j()
  {
    return this.f;
  }
  
  public Type k()
  {
    return this.e;
  }
  
  public boolean l()
  {
    Object localObject = this.a;
    if (localObject == null) {
      return false;
    }
    localObject = ((HashSet)localObject).iterator();
    while (((Iterator)localObject).hasNext()) {
      if (((ConstraintAnchor)((Iterator)localObject).next()).g().o()) {
        return true;
      }
    }
    return false;
  }
  
  public boolean m()
  {
    HashSet localHashSet = this.a;
    boolean bool = false;
    if (localHashSet == null) {
      return false;
    }
    if (localHashSet.size() > 0) {
      bool = true;
    }
    return bool;
  }
  
  public boolean n()
  {
    return this.c;
  }
  
  public boolean o()
  {
    boolean bool;
    if (this.f != null) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public boolean p(ConstraintAnchor paramConstraintAnchor)
  {
    boolean bool1 = false;
    boolean bool2 = false;
    boolean bool3 = false;
    if (paramConstraintAnchor == null) {
      return false;
    }
    Type localType1 = paramConstraintAnchor.k();
    Type localType2 = this.e;
    if (localType1 == localType2) {
      return (localType2 != Type.BASELINE) || ((paramConstraintAnchor.h().Z()) && (h().Z()));
    }
    switch (a.a[localType2.ordinal()])
    {
    default: 
      throw new AssertionError(this.e.name());
    case 7: 
    case 8: 
    case 9: 
      return false;
    case 6: 
      return (localType1 != Type.LEFT) && (localType1 != Type.RIGHT);
    case 4: 
    case 5: 
      if ((localType1 != Type.TOP) && (localType1 != Type.BOTTOM)) {
        bool4 = false;
      } else {
        bool4 = true;
      }
      bool2 = bool4;
      if ((paramConstraintAnchor.h() instanceof f))
      {
        if (!bool4)
        {
          bool4 = bool3;
          if (localType1 != Type.CENTER_Y) {}
        }
        else
        {
          bool4 = true;
        }
        bool2 = bool4;
      }
      return bool2;
    case 2: 
    case 3: 
      if ((localType1 != Type.LEFT) && (localType1 != Type.RIGHT)) {
        bool4 = false;
      } else {
        bool4 = true;
      }
      bool2 = bool4;
      if ((paramConstraintAnchor.h() instanceof f))
      {
        if (!bool4)
        {
          bool4 = bool1;
          if (localType1 != Type.CENTER_X) {}
        }
        else
        {
          bool4 = true;
        }
        bool2 = bool4;
      }
      return bool2;
    }
    boolean bool4 = bool2;
    if (localType1 != Type.BASELINE)
    {
      bool4 = bool2;
      if (localType1 != Type.CENTER_X)
      {
        bool4 = bool2;
        if (localType1 != Type.CENTER_Y) {
          bool4 = true;
        }
      }
    }
    return bool4;
  }
  
  public void q()
  {
    Object localObject = this.f;
    if (localObject != null)
    {
      localObject = ((ConstraintAnchor)localObject).a;
      if (localObject != null)
      {
        ((HashSet)localObject).remove(this);
        if (this.f.a.size() == 0) {
          this.f.a = null;
        }
      }
    }
    this.a = null;
    this.f = null;
    this.g = 0;
    this.h = -2147483648;
    this.c = false;
    this.b = 0;
  }
  
  public void r()
  {
    this.c = false;
    this.b = 0;
  }
  
  public void s(c paramc)
  {
    paramc = this.i;
    if (paramc == null) {
      this.i = new SolverVariable(SolverVariable.Type.UNRESTRICTED, null);
    } else {
      paramc.j();
    }
  }
  
  public void t(int paramInt)
  {
    this.b = paramInt;
    this.c = true;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(this.d.t());
    localStringBuilder.append(":");
    localStringBuilder.append(this.e.toString());
    return localStringBuilder.toString();
  }
  
  public void u(int paramInt)
  {
    if (o()) {
      this.h = paramInt;
    }
  }
  
  public static enum Type
  {
    static
    {
      Type localType1 = new Type("NONE", 0);
      NONE = localType1;
      Type localType2 = new Type("LEFT", 1);
      LEFT = localType2;
      Type localType3 = new Type("TOP", 2);
      TOP = localType3;
      Type localType4 = new Type("RIGHT", 3);
      RIGHT = localType4;
      Type localType5 = new Type("BOTTOM", 4);
      BOTTOM = localType5;
      Type localType6 = new Type("BASELINE", 5);
      BASELINE = localType6;
      Type localType7 = new Type("CENTER", 6);
      CENTER = localType7;
      Type localType8 = new Type("CENTER_X", 7);
      CENTER_X = localType8;
      Type localType9 = new Type("CENTER_Y", 8);
      CENTER_Y = localType9;
      $VALUES = new Type[] { localType1, localType2, localType3, localType4, localType5, localType6, localType7, localType8, localType9 };
    }
    
    private Type() {}
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.constraintlayout.core.widgets.ConstraintAnchor
 * JD-Core Version:    0.7.0.1
 */