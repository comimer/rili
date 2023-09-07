package e1;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class d
{
  public static final d c = new d(new String[] { "COMPOSITION" });
  private final List<String> a;
  private e b;
  
  private d(d paramd)
  {
    this.a = new ArrayList(paramd.a);
    this.b = paramd.b;
  }
  
  public d(String... paramVarArgs)
  {
    this.a = Arrays.asList(paramVarArgs);
  }
  
  private boolean b()
  {
    List localList = this.a;
    return ((String)localList.get(localList.size() - 1)).equals("**");
  }
  
  private boolean f(String paramString)
  {
    return "__container".equals(paramString);
  }
  
  public d a(String paramString)
  {
    d locald = new d(this);
    locald.a.add(paramString);
    return locald;
  }
  
  public boolean c(String paramString, int paramInt)
  {
    int i = this.a.size();
    boolean bool1 = false;
    boolean bool2 = false;
    if (paramInt >= i) {
      return false;
    }
    if (paramInt == this.a.size() - 1) {
      i = 1;
    } else {
      i = 0;
    }
    String str = (String)this.a.get(paramInt);
    int j;
    boolean bool3;
    if (!str.equals("**"))
    {
      if ((!str.equals(paramString)) && (!str.equals("*"))) {
        j = 0;
      } else {
        j = 1;
      }
      if (i == 0)
      {
        bool3 = bool2;
        if (paramInt == this.a.size() - 2)
        {
          bool3 = bool2;
          if (!b()) {}
        }
      }
      else
      {
        bool3 = bool2;
        if (j != 0) {
          bool3 = true;
        }
      }
      return bool3;
    }
    if ((i == 0) && (((String)this.a.get(paramInt + 1)).equals(paramString))) {
      j = 1;
    } else {
      j = 0;
    }
    if (j != 0)
    {
      if (paramInt != this.a.size() - 2)
      {
        bool3 = bool1;
        if (paramInt == this.a.size() - 3)
        {
          bool3 = bool1;
          if (!b()) {}
        }
      }
      else
      {
        bool3 = true;
      }
      return bool3;
    }
    if (i != 0) {
      return true;
    }
    paramInt++;
    if (paramInt < this.a.size() - 1) {
      return false;
    }
    return ((String)this.a.get(paramInt)).equals(paramString);
  }
  
  public e d()
  {
    return this.b;
  }
  
  public int e(String paramString, int paramInt)
  {
    if (f(paramString)) {
      return 0;
    }
    if (!((String)this.a.get(paramInt)).equals("**")) {
      return 1;
    }
    if (paramInt == this.a.size() - 1) {
      return 0;
    }
    if (((String)this.a.get(paramInt + 1)).equals(paramString)) {
      return 2;
    }
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool = true;
    if (this == paramObject) {
      return true;
    }
    if ((paramObject != null) && (getClass() == paramObject.getClass()))
    {
      Object localObject = (d)paramObject;
      if (!this.a.equals(((d)localObject).a)) {
        return false;
      }
      paramObject = this.b;
      localObject = ((d)localObject).b;
      if (paramObject != null) {
        bool = paramObject.equals(localObject);
      } else if (localObject != null) {
        bool = false;
      }
      return bool;
    }
    return false;
  }
  
  public boolean g(String paramString, int paramInt)
  {
    if (f(paramString)) {
      return true;
    }
    if (paramInt >= this.a.size()) {
      return false;
    }
    return (((String)this.a.get(paramInt)).equals(paramString)) || (((String)this.a.get(paramInt)).equals("**")) || (((String)this.a.get(paramInt)).equals("*"));
  }
  
  public boolean h(String paramString, int paramInt)
  {
    boolean bool1 = "__container".equals(paramString);
    boolean bool2 = true;
    if (bool1) {
      return true;
    }
    bool1 = bool2;
    if (paramInt >= this.a.size() - 1) {
      if (((String)this.a.get(paramInt)).equals("**")) {
        bool1 = bool2;
      } else {
        bool1 = false;
      }
    }
    return bool1;
  }
  
  public int hashCode()
  {
    int i = this.a.hashCode();
    e locale = this.b;
    int j;
    if (locale != null) {
      j = locale.hashCode();
    } else {
      j = 0;
    }
    return i * 31 + j;
  }
  
  public d i(e parame)
  {
    d locald = new d(this);
    locald.b = parame;
    return locald;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("KeyPath{keys=");
    localStringBuilder.append(this.a);
    localStringBuilder.append(",resolved=");
    boolean bool;
    if (this.b != null) {
      bool = true;
    } else {
      bool = false;
    }
    localStringBuilder.append(bool);
    localStringBuilder.append('}');
    return localStringBuilder.toString();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     e1.d
 * JD-Core Version:    0.7.0.1
 */