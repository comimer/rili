package com.airbnb.lottie.model.content;

import b1.l;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.model.layer.a;
import k1.d;

public class MergePaths
  implements g1.c
{
  private final String a;
  private final MergePathsMode b;
  private final boolean c;
  
  public MergePaths(String paramString, MergePathsMode paramMergePathsMode, boolean paramBoolean)
  {
    this.a = paramString;
    this.b = paramMergePathsMode;
    this.c = paramBoolean;
  }
  
  public b1.c a(LottieDrawable paramLottieDrawable, a parama)
  {
    if (!paramLottieDrawable.y())
    {
      d.c("Animation contains merge paths but they are disabled.");
      return null;
    }
    return new l(this);
  }
  
  public MergePathsMode b()
  {
    return this.b;
  }
  
  public String c()
  {
    return this.a;
  }
  
  public boolean d()
  {
    return this.c;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("MergePaths{mode=");
    localStringBuilder.append(this.b);
    localStringBuilder.append('}');
    return localStringBuilder.toString();
  }
  
  public static enum MergePathsMode
  {
    static
    {
      MergePathsMode localMergePathsMode1 = new MergePathsMode("MERGE", 0);
      MERGE = localMergePathsMode1;
      MergePathsMode localMergePathsMode2 = new MergePathsMode("ADD", 1);
      ADD = localMergePathsMode2;
      MergePathsMode localMergePathsMode3 = new MergePathsMode("SUBTRACT", 2);
      SUBTRACT = localMergePathsMode3;
      MergePathsMode localMergePathsMode4 = new MergePathsMode("INTERSECT", 3);
      INTERSECT = localMergePathsMode4;
      MergePathsMode localMergePathsMode5 = new MergePathsMode("EXCLUDE_INTERSECTIONS", 4);
      EXCLUDE_INTERSECTIONS = localMergePathsMode5;
      $VALUES = new MergePathsMode[] { localMergePathsMode1, localMergePathsMode2, localMergePathsMode3, localMergePathsMode4, localMergePathsMode5 };
    }
    
    private MergePathsMode() {}
    
    public static MergePathsMode forId(int paramInt)
    {
      if (paramInt != 1)
      {
        if (paramInt != 2)
        {
          if (paramInt != 3)
          {
            if (paramInt != 4)
            {
              if (paramInt != 5) {
                return MERGE;
              }
              return EXCLUDE_INTERSECTIONS;
            }
            return INTERSECT;
          }
          return SUBTRACT;
        }
        return ADD;
      }
      return MERGE;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.airbnb.lottie.model.content.MergePaths
 * JD-Core Version:    0.7.0.1
 */