package com.miui.maml.util;

import android.text.TextUtils;
import android.util.Log;

public class Variable
{
  private String mObjectName;
  private String mPropertyName;
  
  public Variable(String paramString)
  {
    int i = paramString.indexOf('.');
    if (i == -1)
    {
      this.mObjectName = null;
      this.mPropertyName = paramString;
    }
    else
    {
      this.mObjectName = paramString.substring(0, i);
      this.mPropertyName = paramString.substring(i + 1);
    }
    if (TextUtils.isEmpty(this.mPropertyName))
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("invalid variable name:");
      localStringBuilder.append(paramString);
      Log.e("Variable", localStringBuilder.toString());
    }
  }
  
  public String getObjName()
  {
    return this.mObjectName;
  }
  
  public String getPropertyName()
  {
    return this.mPropertyName;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.util.Variable
 * JD-Core Version:    0.7.0.1
 */