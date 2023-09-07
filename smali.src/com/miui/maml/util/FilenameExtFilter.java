package com.miui.maml.util;

import java.io.File;
import java.io.FilenameFilter;
import java.util.AbstractCollection;
import java.util.Arrays;
import java.util.HashSet;

public class FilenameExtFilter
  implements FilenameFilter
{
  private HashSet<String> mExts;
  
  public FilenameExtFilter(String[] paramArrayOfString)
  {
    HashSet localHashSet = new HashSet();
    this.mExts = localHashSet;
    if (paramArrayOfString != null) {
      localHashSet.addAll(Arrays.asList(paramArrayOfString));
    }
  }
  
  public boolean accept(File paramFile, String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(paramFile);
    localStringBuilder.append(File.separator);
    localStringBuilder.append(paramString);
    if (new File(localStringBuilder.toString()).isDirectory()) {
      return true;
    }
    int i = paramString.lastIndexOf('.');
    if (i != -1) {
      return contains(((String)paramString.subSequence(i + 1, paramString.length())).toLowerCase());
    }
    return false;
  }
  
  public boolean contains(String paramString)
  {
    return this.mExts.contains(paramString.toLowerCase());
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.util.FilenameExtFilter
 * JD-Core Version:    0.7.0.1
 */