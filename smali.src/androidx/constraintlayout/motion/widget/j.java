package androidx.constraintlayout.motion.widget;

import android.view.View;
import android.view.View.MeasureSpec;
import androidx.constraintlayout.widget.ConstraintAttribute;
import java.util.Arrays;
import java.util.LinkedHashMap;
import p.b;

class j
  implements Comparable<j>
{
  static String[] v = { "position", "x", "y", "width", "height", "pathRotate" };
  b a;
  int b = 0;
  float c;
  float d;
  float e;
  float f;
  float g;
  float h;
  float i = (0.0F / 0.0F);
  float j = (0.0F / 0.0F);
  int k;
  int l;
  float m;
  g n;
  LinkedHashMap<String, ConstraintAttribute> o;
  int p;
  double[] q;
  double[] r;
  
  public j()
  {
    int i1 = d.a;
    this.k = i1;
    this.l = i1;
    this.m = (0.0F / 0.0F);
    this.n = null;
    this.o = new LinkedHashMap();
    this.p = 0;
    this.q = new double[18];
    this.r = new double[18];
  }
  
  public int b(j paramj)
  {
    return Float.compare(this.d, paramj.d);
  }
  
  void c(double paramDouble, int[] paramArrayOfInt, double[] paramArrayOfDouble1, float[] paramArrayOfFloat1, double[] paramArrayOfDouble2, float[] paramArrayOfFloat2)
  {
    float f1 = this.e;
    float f2 = this.f;
    float f3 = this.g;
    float f4 = this.h;
    int i1 = 0;
    float f5 = 0.0F;
    float f6 = 0.0F;
    float f7 = 0.0F;
    float f8 = 0.0F;
    while (i1 < paramArrayOfInt.length)
    {
      f9 = (float)paramArrayOfDouble1[i1];
      f10 = (float)paramArrayOfDouble2[i1];
      int i2 = paramArrayOfInt[i1];
      if (i2 != 1)
      {
        if (i2 != 2)
        {
          if (i2 != 3)
          {
            if (i2 == 4)
            {
              f4 = f9;
              f8 = f10;
            }
          }
          else
          {
            f3 = f9;
            f6 = f10;
          }
        }
        else
        {
          f2 = f9;
          f7 = f10;
        }
      }
      else
      {
        f5 = f10;
        f1 = f9;
      }
      i1++;
    }
    float f10 = f6 / 2.0F + f5;
    float f9 = f8 / 2.0F + f7;
    paramArrayOfDouble1 = this.n;
    if (paramArrayOfDouble1 != null)
    {
      paramArrayOfInt = new float[2];
      paramArrayOfDouble2 = new float[2];
      paramArrayOfDouble1.b(paramDouble, paramArrayOfInt, paramArrayOfDouble2);
      f6 = paramArrayOfInt[0];
      f8 = paramArrayOfInt[1];
      f10 = paramArrayOfDouble2[0];
      f9 = paramArrayOfDouble2[1];
      double d1 = f6;
      double d2 = f1;
      paramDouble = f2;
      f1 = (float)(d1 + Math.sin(paramDouble) * d2 - f3 / 2.0F);
      f2 = (float)(f8 - d2 * Math.cos(paramDouble) - f4 / 2.0F);
      double d3 = f10;
      double d4 = f5;
      d2 = Math.sin(paramDouble);
      d1 = Math.cos(paramDouble);
      double d5 = f7;
      f10 = (float)(d3 + d2 * d4 + d1 * d5);
      f9 = (float)(f9 - d4 * Math.cos(paramDouble) + Math.sin(paramDouble) * d5);
    }
    paramArrayOfFloat1[0] = (f1 + f3 / 2.0F + 0.0F);
    paramArrayOfFloat1[1] = (f2 + f4 / 2.0F + 0.0F);
    paramArrayOfFloat2[0] = f10;
    paramArrayOfFloat2[1] = f9;
  }
  
  void h(float paramFloat, View paramView, int[] paramArrayOfInt, double[] paramArrayOfDouble1, double[] paramArrayOfDouble2, double[] paramArrayOfDouble3, boolean paramBoolean)
  {
    float f1 = this.e;
    float f2 = this.f;
    float f3 = this.g;
    float f4 = this.h;
    if ((paramArrayOfInt.length != 0) && (this.q.length <= paramArrayOfInt[(paramArrayOfInt.length - 1)]))
    {
      i1 = paramArrayOfInt[(paramArrayOfInt.length - 1)] + 1;
      this.q = new double[i1];
      this.r = new double[i1];
    }
    Arrays.fill(this.q, (0.0D / 0.0D));
    for (int i1 = 0; i1 < paramArrayOfInt.length; i1++)
    {
      double[] arrayOfDouble = this.q;
      i2 = paramArrayOfInt[i1];
      arrayOfDouble[i2] = paramArrayOfDouble1[i1];
      this.r[i2] = paramArrayOfDouble2[i1];
    }
    float f5 = (0.0F / 0.0F);
    i1 = 0;
    float f6 = 0.0F;
    float f7 = 0.0F;
    float f8 = 0.0F;
    float f9 = 0.0F;
    double d1;
    float f10;
    float f11;
    float f12;
    for (;;)
    {
      paramArrayOfInt = this.q;
      if (i1 >= paramArrayOfInt.length) {
        break;
      }
      boolean bool = Double.isNaN(paramArrayOfInt[i1]);
      d1 = 0.0D;
      if ((!bool) || ((paramArrayOfDouble3 == null) || (paramArrayOfDouble3[i1] != 0.0D)))
      {
        if (paramArrayOfDouble3 != null) {
          d1 = paramArrayOfDouble3[i1];
        }
        if (!Double.isNaN(this.q[i1])) {
          d1 = this.q[i1] + d1;
        }
        f10 = f5;
        f11 = (float)d1;
        f12 = (float)this.r[i1];
        if (i1 == 1) {
          break label339;
        }
        if (i1 == 2) {
          break label324;
        }
        if (i1 == 3) {
          break label309;
        }
        if (i1 == 4) {
          break label294;
        }
        if (i1 == 5) {}
      }
      else
      {
        f11 = f5;
        break label351;
      }
      break label351;
      label294:
      f4 = f11;
      f11 = f10;
      f9 = f12;
      break label351;
      label309:
      f3 = f11;
      f11 = f10;
      f8 = f12;
      break label351;
      label324:
      f2 = f11;
      f11 = f10;
      f7 = f12;
      break label351;
      label339:
      f1 = f11;
      f6 = f12;
      f11 = f10;
      label351:
      i1++;
      f5 = f11;
    }
    paramArrayOfDouble1 = this.n;
    if (paramArrayOfDouble1 != null)
    {
      paramArrayOfDouble3 = new float[2];
      paramArrayOfInt = new float[2];
      paramArrayOfDouble1.b(paramFloat, paramArrayOfDouble3, paramArrayOfInt);
      f11 = paramArrayOfDouble3[0];
      paramFloat = paramArrayOfDouble3[1];
      f12 = paramArrayOfInt[0];
      f10 = paramArrayOfInt[1];
      double d2 = f11;
      d1 = f1;
      double d3 = f2;
      f11 = (float)(d2 + Math.sin(d3) * d1 - f3 / 2.0F);
      paramFloat = (float)(paramFloat - Math.cos(d3) * d1 - f4 / 2.0F);
      double d4 = f12;
      double d5 = f6;
      double d6 = Math.sin(d3);
      d2 = Math.cos(d3);
      double d7 = f7;
      f12 = (float)(d4 + d6 * d5 + d2 * d1 * d7);
      f10 = (float)(f10 - d5 * Math.cos(d3) + d1 * Math.sin(d3) * d7);
      if (paramArrayOfDouble2.length >= 2)
      {
        paramArrayOfDouble2[0] = f12;
        paramArrayOfDouble2[1] = f10;
      }
      if (!Float.isNaN(f5)) {
        paramView.setRotation((float)(f5 + Math.toDegrees(Math.atan2(f10, f12))));
      }
    }
    else
    {
      f11 = f1;
      paramFloat = f2;
      if (!Float.isNaN(f5))
      {
        paramFloat = f8 / 2.0F;
        f11 = f9 / 2.0F;
        paramView.setRotation((float)(0.0F + (f5 + Math.toDegrees(Math.atan2(f7 + f11, f6 + paramFloat)))));
        paramFloat = f2;
        f11 = f1;
      }
    }
    i1 = 0;
    if ((paramView instanceof c))
    {
      ((c)paramView).a(f11, paramFloat, f3 + f11, paramFloat + f4);
      return;
    }
    f11 += 0.5F;
    int i2 = (int)f11;
    paramFloat += 0.5F;
    int i3 = (int)paramFloat;
    int i4 = (int)(f11 + f3);
    int i5 = (int)(paramFloat + f4);
    int i6 = i4 - i2;
    int i7 = i5 - i3;
    if ((i6 != paramView.getMeasuredWidth()) || (i7 != paramView.getMeasuredHeight())) {
      i1 = 1;
    }
    if ((i1 != 0) || (paramBoolean)) {
      paramView.measure(View.MeasureSpec.makeMeasureSpec(i6, 1073741824), View.MeasureSpec.makeMeasureSpec(i7, 1073741824));
    }
    paramView.layout(i2, i3, i4, i5);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.constraintlayout.motion.widget.j
 * JD-Core Version:    0.7.0.1
 */