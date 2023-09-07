package com.xiaomi.onetrack;

import java.io.File;
import java.util.Comparator;

class CrashAnalysis$2
  implements Comparator<File>
{
  CrashAnalysis$2(CrashAnalysis paramCrashAnalysis) {}
  
  public int compare(File paramFile1, File paramFile2)
  {
    return (int)(paramFile1.lastModified() - paramFile2.lastModified());
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.CrashAnalysis.2
 * JD-Core Version:    0.7.0.1
 */