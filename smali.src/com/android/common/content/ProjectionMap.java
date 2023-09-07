package com.android.common.content;

import java.util.HashMap;
import java.util.Map;

public class ProjectionMap
  extends HashMap<String, String>
{
  private String[] mColumns;
  
  public static a builder()
  {
    return new a();
  }
  
  private void putColumn(String paramString1, String paramString2)
  {
    super.put(paramString1, paramString2);
  }
  
  public String[] getColumnNames()
  {
    return this.mColumns;
  }
  
  public String put(String paramString1, String paramString2)
  {
    throw new UnsupportedOperationException();
  }
  
  public void putAll(Map<? extends String, ? extends String> paramMap)
  {
    throw new UnsupportedOperationException();
  }
  
  public static class a
  {
    private ProjectionMap a = new ProjectionMap();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.common.content.ProjectionMap
 * JD-Core Version:    0.7.0.1
 */