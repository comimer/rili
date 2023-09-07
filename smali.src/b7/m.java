package b7;

import android.text.BidiFormatter;
import android.text.TextDirectionHeuristics;

public class m
{
  public static String a(String paramString)
  {
    return BidiFormatter.getInstance().unicodeWrap(paramString, TextDirectionHeuristics.LTR);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     b7.m
 * JD-Core Version:    0.7.0.1
 */