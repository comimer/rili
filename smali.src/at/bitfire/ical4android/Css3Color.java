package at.bitfire.ical4android;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.logging.Logger;
import kotlin.Metadata;
import kotlin.collections.g0;
import kotlin.collections.t;
import kotlin.jvm.internal.r;

@Metadata(d1={""}, d2={"Lat/bitfire/ical4android/Css3Color;", "", "argb", "", "(Ljava/lang/String;II)V", "getArgb", "()I", "aliceblue", "antiquewhite", "aqua", "aquamarine", "azure", "beige", "bisque", "black", "blanchedalmond", "blue", "blueviolet", "brown", "burlywood", "cadetblue", "chartreuse", "chocolate", "coral", "cornflowerblue", "cornsilk", "crimson", "cyan", "darkblue", "darkcyan", "darkgoldenrod", "darkgray", "darkgreen", "darkgrey", "darkkhaki", "darkmagenta", "darkolivegreen", "darkorange", "darkorchid", "darkred", "darksalmon", "darkseagreen", "darkslateblue", "darkslategray", "darkslategrey", "darkturquoise", "darkviolet", "deeppink", "deepskyblue", "dimgray", "dimgrey", "dodgerblue", "firebrick", "floralwhite", "forestgreen", "fuchsia", "gainsboro", "ghostwhite", "gold", "goldenrod", "gray", "green", "greenyellow", "grey", "honeydew", "hotpink", "indianred", "indigo", "ivory", "khaki", "lavender", "lavenderblush", "lawngreen", "lemonchiffon", "lightblue", "lightcoral", "lightcyan", "lightgoldenrodyellow", "lightgray", "lightgreen", "lightgrey", "lightpink", "lightsalmon", "lightseagreen", "lightskyblue", "lightslategray", "lightslategrey", "lightsteelblue", "lightyellow", "lime", "limegreen", "linen", "magenta", "maroon", "mediumaquamarine", "mediumblue", "mediumorchid", "mediumpurple", "mediumseagreen", "mediumslateblue", "mediumspringgreen", "mediumturquoise", "mediumvioletred", "midnightblue", "mintcream", "mistyrose", "moccasin", "navajowhite", "navy", "oldlace", "olive", "olivedrab", "orange", "orangered", "orchid", "palegoldenrod", "palegreen", "paleturquoise", "palevioletred", "papayawhip", "peachpuff", "peru", "pink", "plum", "powderblue", "purple", "red", "rosybrown", "royalblue", "saddlebrown", "salmon", "sandybrown", "seagreen", "seashell", "sienna", "silver", "skyblue", "slateblue", "slategray", "slategrey", "snow", "springgreen", "steelblue", "tan", "teal", "thistle", "tomato", "turquoise", "violet", "wheat", "white", "whitesmoke", "yellow", "yellowgreen", "Companion", "ical4android_release"}, k=1, mv={1, 7, 1}, xi=48)
public enum Css3Color
{
  public static final Companion Companion = new Companion(null);
  private final int argb;
  
  private Css3Color(int paramInt)
  {
    this.argb = paramInt;
  }
  
  public final int getArgb()
  {
    return this.argb;
  }
  
  @Metadata(d1={""}, d2={"Lat/bitfire/ical4android/Css3Color$Companion;", "", "()V", "fromString", "Lat/bitfire/ical4android/Css3Color;", "name", "", "nearestMatch", "argb", "", "ical4android_release"}, k=1, mv={1, 7, 1}, xi=48)
  public static final class Companion
  {
    public final Css3Color fromString(String paramString)
    {
      r.f(paramString, "name");
      try
      {
        Css3Color localCss3Color = Css3Color.valueOf(paramString);
        paramString = localCss3Color;
      }
      catch (IllegalArgumentException localIllegalArgumentException)
      {
        Logger localLogger = Ical4Android.INSTANCE.getLog();
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("Unknown color: ");
        localStringBuilder.append(paramString);
        localLogger.warning(localStringBuilder.toString());
        paramString = null;
      }
      return paramString;
    }
    
    public final Css3Color nearestMatch(int paramInt)
    {
      int i = paramInt & 0xFFFFFF;
      Object localObject1 = Css3Color.values();
      Object localObject2 = new ArrayList(localObject1.length);
      int j = localObject1.length;
      double d1;
      double d2;
      double d3;
      for (paramInt = 0; paramInt < j; paramInt++)
      {
        int k = localObject1[paramInt].getArgb() & 0xFFFFFF;
        int m = i >> 16;
        int n = k >> 16;
        d1 = (m + n) / 2.0D;
        m -= n;
        n = (i >> 8 & 0xFF) - (k >> 8 & 0xFF);
        m *= m;
        n *= n;
        d2 = m;
        d3 = n;
        double d4 = (i & 0xFF) - (k & 0xFF);
        ((Collection)localObject2).add(Double.valueOf(Math.sqrt(d2 * 2.0D + d3 * 4.0D + 3.0D * d4 * d4 + d1 * (m - n) / 256.0D)));
      }
      Iterator localIterator = t.K0((Iterable)localObject2).iterator();
      if (localIterator.hasNext())
      {
        localObject1 = localIterator.next();
        if (!localIterator.hasNext())
        {
          localObject2 = localObject1;
        }
        else
        {
          d1 = ((Number)((g0)localObject1).d()).doubleValue();
          do
          {
            Object localObject3 = localIterator.next();
            d2 = ((Number)((g0)localObject3).d()).doubleValue();
            localObject2 = localObject1;
            d3 = d1;
            if (Double.compare(d1, d2) > 0)
            {
              localObject2 = localObject3;
              d3 = d2;
            }
            localObject1 = localObject2;
            d1 = d3;
          } while (localIterator.hasNext());
        }
        r.c(localObject2);
        paramInt = ((g0)localObject2).c();
        return Css3Color.values()[paramInt];
      }
      throw new NoSuchElementException();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     at.bitfire.ical4android.Css3Color
 * JD-Core Version:    0.7.0.1
 */