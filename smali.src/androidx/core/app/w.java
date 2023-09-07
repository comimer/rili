package androidx.core.app;

import android.app.Person;
import android.app.Person.Builder;
import android.graphics.drawable.Icon;
import androidx.core.graphics.drawable.IconCompat;

public class w
{
  CharSequence a;
  IconCompat b;
  String c;
  String d;
  boolean e;
  boolean f;
  
  w(b paramb)
  {
    this.a = paramb.a;
    this.b = paramb.b;
    this.c = paramb.c;
    this.d = paramb.d;
    this.e = paramb.e;
    this.f = paramb.f;
  }
  
  public IconCompat a()
  {
    return this.b;
  }
  
  public String b()
  {
    return this.d;
  }
  
  public CharSequence c()
  {
    return this.a;
  }
  
  public String d()
  {
    return this.c;
  }
  
  public boolean e()
  {
    return this.e;
  }
  
  public boolean f()
  {
    return this.f;
  }
  
  public String g()
  {
    Object localObject = this.c;
    if (localObject != null) {
      return localObject;
    }
    if (this.a != null)
    {
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("name:");
      ((StringBuilder)localObject).append(this.a);
      return ((StringBuilder)localObject).toString();
    }
    return "";
  }
  
  public Person h()
  {
    return a.b(this);
  }
  
  static class a
  {
    static w a(Person paramPerson)
    {
      w.b localb = new w.b().f(paramPerson.getName());
      IconCompat localIconCompat;
      if (paramPerson.getIcon() != null) {
        localIconCompat = IconCompat.a(paramPerson.getIcon());
      } else {
        localIconCompat = null;
      }
      return localb.c(localIconCompat).g(paramPerson.getUri()).e(paramPerson.getKey()).b(paramPerson.isBot()).d(paramPerson.isImportant()).a();
    }
    
    static Person b(w paramw)
    {
      Person.Builder localBuilder = new Person.Builder().setName(paramw.c());
      Icon localIcon;
      if (paramw.a() != null) {
        localIcon = paramw.a().m();
      } else {
        localIcon = null;
      }
      return localBuilder.setIcon(localIcon).setUri(paramw.d()).setKey(paramw.b()).setBot(paramw.e()).setImportant(paramw.f()).build();
    }
  }
  
  public static class b
  {
    CharSequence a;
    IconCompat b;
    String c;
    String d;
    boolean e;
    boolean f;
    
    public w a()
    {
      return new w(this);
    }
    
    public b b(boolean paramBoolean)
    {
      this.e = paramBoolean;
      return this;
    }
    
    public b c(IconCompat paramIconCompat)
    {
      this.b = paramIconCompat;
      return this;
    }
    
    public b d(boolean paramBoolean)
    {
      this.f = paramBoolean;
      return this;
    }
    
    public b e(String paramString)
    {
      this.d = paramString;
      return this;
    }
    
    public b f(CharSequence paramCharSequence)
    {
      this.a = paramCharSequence;
      return this;
    }
    
    public b g(String paramString)
    {
      this.c = paramString;
      return this;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.core.app.w
 * JD-Core Version:    0.7.0.1
 */