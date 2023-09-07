package j1;

import com.airbnb.lottie.model.content.Mask;
import com.airbnb.lottie.model.content.Mask.MaskMode;
import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.IOException;

class x
{
  static Mask a(JsonReader paramJsonReader, com.airbnb.lottie.h paramh)
    throws IOException
  {
    paramJsonReader.e();
    Object localObject1 = null;
    boolean bool = false;
    f1.h localh = null;
    Object localObject2 = localh;
    while (paramJsonReader.q())
    {
      String str = paramJsonReader.E();
      str.hashCode();
      int i = str.hashCode();
      int j = 3;
      switch (i)
      {
      }
      do
      {
        do
        {
          do
          {
            do
            {
              i = -1;
              break;
            } while (!str.equals("mode"));
            i = 3;
            break;
          } while (!str.equals("inv"));
          i = 2;
          break;
        } while (!str.equals("pt"));
        i = 1;
        break;
      } while (!str.equals("o"));
      i = 0;
      switch (i)
      {
      default: 
        paramJsonReader.d0();
        break;
      case 3: 
        localObject1 = paramJsonReader.H();
        ((String)localObject1).hashCode();
        switch (((String)localObject1).hashCode())
        {
        }
        do
        {
          do
          {
            do
            {
              i = -1;
              break;
              i = j;
              if (((String)localObject1).equals("s")) {
                break;
              }
            } while ((goto 264) || (!((String)localObject1).equals("n")));
            i = 2;
            break;
          } while (!((String)localObject1).equals("i"));
          i = 1;
          break;
        } while (!((String)localObject1).equals("a"));
        i = 0;
        switch (i)
        {
        default: 
          localObject1 = new StringBuilder();
          ((StringBuilder)localObject1).append("Unknown mask mode ");
          ((StringBuilder)localObject1).append(str);
          ((StringBuilder)localObject1).append(". Defaulting to Add.");
          k1.d.c(((StringBuilder)localObject1).toString());
          localObject1 = Mask.MaskMode.MASK_MODE_ADD;
          break;
        case 3: 
          localObject1 = Mask.MaskMode.MASK_MODE_SUBTRACT;
          break;
        case 2: 
          localObject1 = Mask.MaskMode.MASK_MODE_NONE;
          break;
        case 1: 
          paramh.a("Animation contains intersect masks. They are not supported but will be treated like add masks.");
          localObject1 = Mask.MaskMode.MASK_MODE_INTERSECT;
          break;
        case 0: 
          localObject1 = Mask.MaskMode.MASK_MODE_ADD;
        }
        break;
      case 2: 
        bool = paramJsonReader.s();
        break;
      case 1: 
        localh = d.k(paramJsonReader, paramh);
        break;
      case 0: 
        localObject2 = d.h(paramJsonReader, paramh);
      }
    }
    paramJsonReader.m();
    return new Mask((Mask.MaskMode)localObject1, localh, (f1.d)localObject2, bool);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     j1.x
 * JD-Core Version:    0.7.0.1
 */