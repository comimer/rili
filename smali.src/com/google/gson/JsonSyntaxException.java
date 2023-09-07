package com.google.gson;

public final class JsonSyntaxException
  extends JsonParseException
{
  private static final long serialVersionUID = 1L;
  
  public JsonSyntaxException(String paramString)
  {
    super(paramString);
  }
  
  public JsonSyntaxException(String paramString, Throwable paramThrowable)
  {
    super(paramString, paramThrowable);
  }
  
  public JsonSyntaxException(Throwable paramThrowable)
  {
    super(paramThrowable);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.gson.JsonSyntaxException
 * JD-Core Version:    0.7.0.1
 */