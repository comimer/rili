package j1;

import com.airbnb.lottie.model.content.MergePaths;
import com.airbnb.lottie.model.content.MergePaths.MergePathsMode;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.airbnb.lottie.parser.moshi.JsonReader.a;
import java.io.IOException;

class y
{
  private static final JsonReader.a a = JsonReader.a.a(new String[] { "nm", "mm", "hd" });
  
  static MergePaths a(JsonReader paramJsonReader)
    throws IOException
  {
    String str = null;
    boolean bool = false;
    MergePaths.MergePathsMode localMergePathsMode = null;
    while (paramJsonReader.q())
    {
      int i = paramJsonReader.a0(a);
      if (i != 0)
      {
        if (i != 1)
        {
          if (i != 2)
          {
            paramJsonReader.c0();
            paramJsonReader.d0();
          }
          else
          {
            bool = paramJsonReader.s();
          }
        }
        else {
          localMergePathsMode = MergePaths.MergePathsMode.forId(paramJsonReader.z());
        }
      }
      else {
        str = paramJsonReader.H();
      }
    }
    return new MergePaths(str, localMergePathsMode, bool);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     j1.y
 * JD-Core Version:    0.7.0.1
 */