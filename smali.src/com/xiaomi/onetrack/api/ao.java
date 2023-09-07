package com.xiaomi.onetrack.api;

import org.json.JSONException;
import org.json.JSONObject;

public class ao
{
  public static final String a = "name";
  public static final String b = "gender";
  public static final String c = "birthday";
  public static final String d = "phone";
  public static final String e = "job";
  public static final String f = "hobby";
  public static final String g = "region";
  public static final String h = "province";
  public static final String i = "city";
  private String j;
  private String k;
  private String l;
  private String m;
  private String n;
  private String o;
  private String p;
  private String q;
  private String r;
  
  public String a()
  {
    return this.j;
  }
  
  public String b()
  {
    return this.k;
  }
  
  public String c()
  {
    return this.l;
  }
  
  public String d()
  {
    return this.m;
  }
  
  public String e()
  {
    return this.n;
  }
  
  public String f()
  {
    return this.o;
  }
  
  public String g()
  {
    return this.p;
  }
  
  public String h()
  {
    return this.q;
  }
  
  public String i()
  {
    return this.r;
  }
  
  public JSONObject j()
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("name", this.j);
      localJSONObject.put("gender", this.k);
      localJSONObject.put("birthday", this.l);
      localJSONObject.put("phone", this.m);
      localJSONObject.put("job", this.n);
      localJSONObject.put("hobby", this.o);
      localJSONObject.put("region", this.p);
      localJSONObject.put("province", this.q);
      localJSONObject.put("city", this.r);
    }
    catch (JSONException localJSONException)
    {
      localJSONException.printStackTrace();
    }
    return localJSONObject;
  }
  
  public String toString()
  {
    return j().toString();
  }
  
  public static final class a
  {
    private String a;
    private String b;
    private String c;
    private String d;
    private String e;
    private String f;
    private String g;
    private String h;
    private String i;
    
    public a a(String paramString)
    {
      this.a = paramString;
      return this;
    }
    
    public ao a()
    {
      ao localao = new ao(null);
      ao.a(localao, this.f);
      ao.b(localao, this.e);
      ao.c(localao, this.i);
      ao.d(localao, this.d);
      ao.e(localao, this.h);
      ao.f(localao, this.c);
      ao.g(localao, this.a);
      ao.h(localao, this.g);
      ao.i(localao, this.b);
      return localao;
    }
    
    public a b(String paramString)
    {
      this.b = paramString;
      return this;
    }
    
    public a c(String paramString)
    {
      this.c = paramString;
      return this;
    }
    
    public a d(String paramString)
    {
      this.d = paramString;
      return this;
    }
    
    public a e(String paramString)
    {
      this.e = paramString;
      return this;
    }
    
    public a f(String paramString)
    {
      this.f = paramString;
      return this;
    }
    
    public a g(String paramString)
    {
      this.g = paramString;
      return this;
    }
    
    public a h(String paramString)
    {
      this.h = paramString;
      return this;
    }
    
    public a i(String paramString)
    {
      this.i = paramString;
      return this;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.api.ao
 * JD-Core Version:    0.7.0.1
 */