package androidx.annotation;

import kotlin.Metadata;

@Metadata(bv={}, d1={""}, d2={"androidx/annotation/RequiresOptIn$Level", "", "Landroidx/annotation/RequiresOptIn$Level;", "<init>", "(Ljava/lang/String;I)V", "WARNING", "ERROR", "annotation-experimental_release"}, k=1, mv={1, 4, 2})
public enum RequiresOptIn$Level
{
  static
  {
    Level localLevel1 = new Level("WARNING", 0);
    WARNING = localLevel1;
    Level localLevel2 = new Level("ERROR", 1);
    ERROR = localLevel2;
    $VALUES = new Level[] { localLevel1, localLevel2 };
  }
  
  private RequiresOptIn$Level() {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.annotation.RequiresOptIn.Level
 * JD-Core Version:    0.7.0.1
 */