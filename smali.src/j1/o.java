package j1;

import android.graphics.Color;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.airbnb.lottie.parser.moshi.JsonReader.Token;
import g1.d;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import k1.g;

public class o
  implements n0<d>
{
  private int a;
  
  public o(int paramInt)
  {
    this.a = paramInt;
  }
  
  private d b(d paramd, List<Float> paramList)
  {
    int i = this.a * 4;
    if (paramList.size() <= i) {
      return paramd;
    }
    float[] arrayOfFloat1 = paramd.b();
    int[] arrayOfInt = paramd.a();
    int j = (paramList.size() - i) / 2;
    float[] arrayOfFloat2 = new float[j];
    float[] arrayOfFloat3 = new float[j];
    int k = 0;
    j = 0;
    while (i < paramList.size())
    {
      if (i % 2 == 0)
      {
        arrayOfFloat2[j] = ((Float)paramList.get(i)).floatValue();
      }
      else
      {
        arrayOfFloat3[j] = ((Float)paramList.get(i)).floatValue();
        j++;
      }
      i++;
    }
    paramd = e(paramd.b(), arrayOfFloat2);
    int m = paramd.length;
    paramList = new int[m];
    for (i = k; i < m; i++)
    {
      float f = paramd[i];
      j = Arrays.binarySearch(arrayOfFloat1, f);
      k = Arrays.binarySearch(arrayOfFloat2, f);
      if ((j >= 0) && (k <= 0))
      {
        paramList[i] = d(f, arrayOfInt[j], arrayOfFloat2, arrayOfFloat3);
      }
      else
      {
        j = k;
        if (k < 0) {
          j = -(k + 1);
        }
        paramList[i] = c(f, arrayOfFloat3[j], arrayOfFloat1, arrayOfInt);
      }
    }
    return new d(paramd, paramList);
  }
  
  private int c(float paramFloat1, float paramFloat2, float[] paramArrayOfFloat, int[] paramArrayOfInt)
  {
    if ((paramArrayOfInt.length >= 2) && (paramFloat1 != paramArrayOfFloat[0]))
    {
      int i = 1;
      while (i < paramArrayOfFloat.length)
      {
        float f1 = paramArrayOfFloat[i];
        if ((f1 < paramFloat1) && (i != paramArrayOfFloat.length - 1))
        {
          i++;
        }
        else
        {
          int j = i - 1;
          float f2 = paramArrayOfFloat[j];
          paramFloat1 = (paramFloat1 - f2) / (f1 - f2);
          i = paramArrayOfInt[i];
          j = paramArrayOfInt[j];
          return Color.argb((int)(paramFloat2 * 255.0F), g.j(Color.red(j), Color.red(i), paramFloat1), g.j(Color.green(j), Color.green(i), paramFloat1), g.j(Color.blue(j), Color.blue(i), paramFloat1));
        }
      }
      throw new IllegalArgumentException("Unreachable code.");
    }
    return paramArrayOfInt[0];
  }
  
  private int d(float paramFloat, int paramInt, float[] paramArrayOfFloat1, float[] paramArrayOfFloat2)
  {
    if ((paramArrayOfFloat2.length >= 2) && (paramFloat > paramArrayOfFloat1[0]))
    {
      int i = 1;
      while (i < paramArrayOfFloat1.length)
      {
        float f1 = paramArrayOfFloat1[i];
        boolean bool = f1 < paramFloat;
        if ((bool) && (i != paramArrayOfFloat1.length - 1))
        {
          i++;
        }
        else
        {
          if (!bool)
          {
            paramFloat = paramArrayOfFloat2[i];
          }
          else
          {
            int j = i - 1;
            float f2 = paramArrayOfFloat1[j];
            paramFloat = (paramFloat - f2) / (f1 - f2);
            paramFloat = g.i(paramArrayOfFloat2[j], paramArrayOfFloat2[i], paramFloat);
          }
          return Color.argb((int)(paramFloat * 255.0F), Color.red(paramInt), Color.green(paramInt), Color.blue(paramInt));
        }
      }
      throw new IllegalArgumentException("Unreachable code.");
    }
    return Color.argb((int)(paramArrayOfFloat2[0] * 255.0F), Color.red(paramInt), Color.green(paramInt), Color.blue(paramInt));
  }
  
  protected static float[] e(float[] paramArrayOfFloat1, float[] paramArrayOfFloat2)
  {
    if (paramArrayOfFloat1.length == 0) {
      return paramArrayOfFloat2;
    }
    if (paramArrayOfFloat2.length == 0) {
      return paramArrayOfFloat1;
    }
    int i = paramArrayOfFloat1.length + paramArrayOfFloat2.length;
    float[] arrayOfFloat = new float[i];
    int j = 0;
    int k = 0;
    int m = k;
    int n = m;
    int i1 = m;
    while (j < i)
    {
      m = paramArrayOfFloat1.length;
      float f1 = (0.0F / 0.0F);
      float f2;
      if (i1 < m) {
        f2 = paramArrayOfFloat1[i1];
      } else {
        f2 = (0.0F / 0.0F);
      }
      if (n < paramArrayOfFloat2.length) {
        f1 = paramArrayOfFloat2[n];
      }
      if ((!Float.isNaN(f1)) && (f2 >= f1))
      {
        if ((!Float.isNaN(f2)) && (f1 >= f2))
        {
          arrayOfFloat[j] = f2;
          i1++;
          m = n + 1;
          k++;
        }
        else
        {
          arrayOfFloat[j] = f1;
          m = n + 1;
        }
      }
      else
      {
        arrayOfFloat[j] = f2;
        i1++;
        m = n;
      }
      j++;
      n = m;
    }
    if (k == 0) {
      return arrayOfFloat;
    }
    return Arrays.copyOf(arrayOfFloat, i - k);
  }
  
  public d f(JsonReader paramJsonReader, float paramFloat)
    throws IOException
  {
    ArrayList localArrayList = new ArrayList();
    JsonReader.Token localToken = paramJsonReader.W();
    Object localObject = JsonReader.Token.BEGIN_ARRAY;
    int i = 0;
    if (localToken == localObject) {
      j = 1;
    } else {
      j = 0;
    }
    if (j != 0) {
      paramJsonReader.d();
    }
    while (paramJsonReader.q()) {
      localArrayList.add(Float.valueOf((float)paramJsonReader.x()));
    }
    if ((localArrayList.size() == 4) && (((Float)localArrayList.get(0)).floatValue() == 1.0F))
    {
      localArrayList.set(0, Float.valueOf(0.0F));
      localArrayList.add(Float.valueOf(1.0F));
      localArrayList.add((Float)localArrayList.get(1));
      localArrayList.add((Float)localArrayList.get(2));
      localArrayList.add((Float)localArrayList.get(3));
      this.a = 2;
    }
    if (j != 0) {
      paramJsonReader.j();
    }
    if (this.a == -1) {
      this.a = (localArrayList.size() / 4);
    }
    int j = this.a;
    localObject = new float[j];
    paramJsonReader = new int[j];
    int k = 0;
    int m = k;
    for (j = i; j < this.a * 4; j++)
    {
      i = j / 4;
      double d = ((Float)localArrayList.get(j)).floatValue();
      int n = j % 4;
      if (n != 0)
      {
        if (n != 1)
        {
          if (n != 2)
          {
            if (n == 3) {
              paramJsonReader[i] = Color.argb(255, k, m, (int)(d * 255.0D));
            }
          }
          else {
            m = (int)(d * 255.0D);
          }
        }
        else {
          k = (int)(d * 255.0D);
        }
      }
      else
      {
        if (i > 0)
        {
          float f = localObject[(i - 1)];
          paramFloat = (float)d;
          if (f >= paramFloat)
          {
            localObject[i] = (paramFloat + 0.01F);
            continue;
          }
        }
        localObject[i] = ((float)d);
      }
    }
    return b(new d((float[])localObject, paramJsonReader), localArrayList);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     j1.o
 * JD-Core Version:    0.7.0.1
 */