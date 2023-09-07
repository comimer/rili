package u4;

import android.graphics.Bitmap;
import android.media.ThumbnailUtils;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import android.widget.TextView;
import com.miui.calendar.view.simplifyspan.customspan.CustomAbsoluteSizeSpan;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import x4.d;
import x4.e;
import x4.f;

public class a
{
  private List<x4.a> a;
  private List<x4.a> b;
  private StringBuilder c;
  private StringBuilder d;
  private Map<x4.b, a> e = new HashMap();
  private Map<x4.b, a> f = new HashMap();
  private StringBuilder g;
  
  public a()
  {
    this(null);
  }
  
  public a(String paramString)
  {
    f(paramString, new x4.a[0]);
  }
  
  private void a(int paramInt1, int paramInt2, w4.b paramb)
  {
    if (this.f.isEmpty()) {
      return;
    }
    Object localObject1 = this.f.entrySet().iterator();
    while (((Iterator)localObject1).hasNext())
    {
      Object localObject2 = (Map.Entry)((Iterator)localObject1).next();
      Object localObject3 = (a)((Map.Entry)localObject2).getValue();
      int i = ((a)localObject3).a;
      int j = ((a)localObject3).b;
      if ((paramInt1 >= i) && (paramInt2 <= j + i))
      {
        localObject1 = (x4.b)((Map.Entry)localObject2).getKey();
        localObject3 = ((x4.b)localObject1).j();
        localObject2 = localObject3;
        if (localObject3 == null)
        {
          localObject2 = new ArrayList();
          ((x4.b)localObject1).p((List)localObject2);
        }
        ((List)localObject2).add(paramb);
      }
    }
  }
  
  private void e(boolean paramBoolean, int paramInt, String paramString, x4.a... paramVarArgs)
  {
    Object localObject1 = new HashMap();
    int i = paramVarArgs.length;
    for (int j = 0; j < i; j++)
    {
      x4.a locala = paramVarArgs[j];
      localObject2 = locala.d();
      if ((!TextUtils.isEmpty((CharSequence)localObject2)) && (paramString.contains((CharSequence)localObject2)))
      {
        int k = ((String)localObject2).length();
        int m = locala.a();
        if (m != 1)
        {
          if (m != 2)
          {
            if (m == 3)
            {
              m = paramString.indexOf((String)localObject2);
              localObject3 = new ArrayList();
              ((List)localObject3).add(Integer.valueOf(m));
              int n = m + k;
              m = 1;
              while (m != 0)
              {
                int i1 = paramString.indexOf((String)localObject2, n);
                if (i1 != -1)
                {
                  ((List)localObject3).add(Integer.valueOf(i1));
                  n = i1 + k;
                }
                else
                {
                  m = 0;
                }
              }
              int[] arrayOfInt = new int[((List)localObject3).size()];
              for (m = 0; m < ((List)localObject3).size(); m++) {
                arrayOfInt[m] = (paramInt + ((Integer)((List)localObject3).get(m)).intValue());
              }
              locala.e(arrayOfInt);
            }
          }
          else {
            locala.e(new int[] { paramInt + paramString.lastIndexOf((String)localObject2) });
          }
        }
        else {
          locala.e(new int[] { paramInt + paramString.indexOf((String)localObject2) });
        }
        Object localObject3 = locala.c();
        if ((localObject3 != null) && (localObject3.length != 0)) {
          if ((locala instanceof f))
          {
            if (((f)locala).j() > 0.0F) {
              if (localObject3.length > 1) {
                ((Map)localObject1).put(localObject2, Boolean.TRUE);
              } else {
                ((Map)localObject1).put(localObject2, Boolean.FALSE);
              }
            }
          }
          else if (((locala instanceof x4.c)) || ((locala instanceof d))) {
            if (localObject3.length > 1) {
              ((Map)localObject1).put(localObject2, Boolean.TRUE);
            } else {
              ((Map)localObject1).put(localObject2, Boolean.FALSE);
            }
          }
        }
      }
    }
    Object localObject2 = paramString;
    if (!((Map)localObject1).isEmpty())
    {
      localObject1 = ((Map)localObject1).entrySet().iterator();
      for (;;)
      {
        localObject2 = paramString;
        if (!((Iterator)localObject1).hasNext()) {
          break;
        }
        localObject2 = (Map.Entry)((Iterator)localObject1).next();
        if (((Boolean)((Map.Entry)localObject2).getValue()).booleanValue()) {
          paramString = paramString.replaceAll((String)((Map.Entry)localObject2).getKey(), "");
        } else {
          paramString = paramString.replace((CharSequence)((Map.Entry)localObject2).getKey(), "");
        }
      }
    }
    if (paramBoolean)
    {
      this.g.insert(0, (String)localObject2);
      this.b.addAll(Arrays.asList(paramVarArgs));
    }
    else
    {
      this.g.append((String)localObject2);
      this.a.addAll(Arrays.asList(paramVarArgs));
    }
  }
  
  private void f(String paramString, x4.a... paramVarArgs)
  {
    String str;
    if (TextUtils.isEmpty(paramString)) {
      str = "";
    } else {
      str = paramString;
    }
    this.c = new StringBuilder(str);
    this.d = new StringBuilder("");
    this.g = new StringBuilder("");
    this.a = new ArrayList();
    this.b = new ArrayList();
    if (!TextUtils.isEmpty(paramString)) {
      if ((paramVarArgs != null) && (paramVarArgs.length > 0)) {
        e(false, 0, paramString, paramVarArgs);
      } else {
        this.g.append(paramString);
      }
    }
  }
  
  public a b(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return this;
    }
    this.g.append(paramString);
    this.c.append(paramString);
    return this;
  }
  
  public a c(x4.a parama)
  {
    if (parama == null) {
      return this;
    }
    String str = parama.d();
    if (TextUtils.isEmpty(str)) {
      return this;
    }
    parama.e(new int[] { this.c.length() });
    this.c.append(str);
    this.a.add(parama);
    return this;
  }
  
  public SpannableStringBuilder d()
  {
    int i = this.d.length();
    int j = 0;
    Object localObject1;
    if (i > 0)
    {
      this.c.insert(0, this.d);
      if (!this.a.isEmpty())
      {
        localObject1 = this.a.iterator();
        while (((Iterator)localObject1).hasNext())
        {
          localObject2 = ((x4.a)((Iterator)localObject1).next()).c();
          if ((localObject2 != null) && (localObject2.length != 0)) {
            for (i = 0; i < localObject2.length; i++) {
              localObject2[i] += this.d.length();
            }
          }
        }
      }
      if (!this.f.isEmpty())
      {
        localObject2 = this.f.entrySet().iterator();
        while (((Iterator)localObject2).hasNext())
        {
          localObject1 = (a)((Map.Entry)((Iterator)localObject2).next()).getValue();
          ((a)localObject1).a += this.d.length();
        }
      }
    }
    if (!this.e.isEmpty()) {
      this.f.putAll(this.e);
    }
    if (!this.b.isEmpty()) {
      this.a.addAll(this.b);
    }
    if (this.c.length() == 0) {
      return null;
    }
    if (this.a.isEmpty()) {
      return new SpannableStringBuilder(this.c.toString());
    }
    if (this.g.length() == 0) {
      this.g.append(this.c);
    }
    String str1 = this.g.toString();
    SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder(this.c);
    Object localObject2 = this.a.iterator();
    int k = 0;
    i = j;
    while (((Iterator)localObject2).hasNext())
    {
      localObject1 = (x4.a)((Iterator)localObject2).next();
      Object localObject3 = ((x4.a)localObject1).d();
      int[] arrayOfInt = ((x4.a)localObject1).c();
      if ((!TextUtils.isEmpty((CharSequence)localObject3)) && (arrayOfInt != null) && (arrayOfInt.length != 0))
      {
        int m = ((String)localObject3).length();
        int n;
        int i1;
        Object localObject4;
        if ((localObject1 instanceof f))
        {
          localObject3 = (f)localObject1;
          localObject1 = ((f)localObject3).g();
          if (localObject1 != null)
          {
            if (((x4.b)localObject1).h() == 0) {
              ((x4.b)localObject1).o(((f)localObject3).i());
            }
            if (((x4.b)localObject1).g() == 0) {
              ((x4.b)localObject1).n(((f)localObject3).h());
            }
          }
          j = arrayOfInt.length;
          n = i;
          i1 = i;
          while (n < j)
          {
            i = arrayOfInt[n];
            if (((f)localObject3).i() != 0) {
              localSpannableStringBuilder.setSpan(new ForegroundColorSpan(((f)localObject3).i()), i, i + m, 33);
            }
            if ((((f)localObject3).h() != 0) && (localObject1 == null)) {
              localSpannableStringBuilder.setSpan(new BackgroundColorSpan(((f)localObject3).h()), i, i + m, 33);
            }
            if (((f)localObject3).l()) {
              localSpannableStringBuilder.setSpan(new UnderlineSpan(), i, i + m, 33);
            }
            if (((f)localObject3).k()) {
              localSpannableStringBuilder.setSpan(new StrikethroughSpan(), i, i + m, 33);
            }
            if (((f)localObject3).m()) {
              localSpannableStringBuilder.setSpan(new StyleSpan(1), i, i + m, 33);
            }
            if (((f)localObject3).j() > 0.0F)
            {
              localObject4 = ((f)localObject3).f();
              int i2 = ((x4.a)localObject3).b();
              if ((i2 != 3) && (localObject4 != null))
              {
                String str2 = ((x4.a)localObject3).d();
                int i3 = Math.round(((f)localObject3).j());
                i1 = i;
                localSpannableStringBuilder.setSpan(new CustomAbsoluteSizeSpan(str1, str2, i3, (TextView)localObject4, i2), i1, i1 + m, 33);
              }
              else
              {
                i1 = i;
                localSpannableStringBuilder.setSpan(new AbsoluteSizeSpan(Math.round(((f)localObject3).j()), true), i1, i1 + m, 33);
              }
            }
            i1 = i;
            i = k;
            if (localObject1 != null)
            {
              i = k;
              if (k == 0)
              {
                localObject4 = ((x4.b)localObject1).f();
                if (localObject4 != null) {
                  ((TextView)localObject4).setMovementMethod(w4.a.a());
                }
                i = 1;
              }
              localSpannableStringBuilder.setSpan(new v4.a((x4.b)localObject1), i1, i1 + m, 33);
            }
            n++;
            i1 = 0;
            k = i;
          }
          i = i1;
        }
        else
        {
          if ((localObject1 instanceof x4.c))
          {
            localObject1 = (x4.c)localObject1;
            localObject3 = ((x4.c)localObject1).g();
            n = ((x4.c)localObject1).j();
            i = ((x4.c)localObject1).i();
            if ((n > 0) && (i > 0))
            {
              j = ((Bitmap)localObject3).getWidth();
              i1 = ((Bitmap)localObject3).getHeight();
              if ((n < j) && (i < i1))
              {
                localObject4 = ThumbnailUtils.extractThumbnail((Bitmap)localObject3, n, i);
                if (localObject4 != null)
                {
                  ((Bitmap)localObject3).recycle();
                  ((x4.c)localObject1).l((Bitmap)localObject4);
                }
              }
            }
            j = arrayOfInt.length;
            for (i = 0; i < j; i++)
            {
              i1 = arrayOfInt[i];
              localObject3 = new v4.b(str1, (x4.c)localObject1);
              n = i1 + m;
              localSpannableStringBuilder.setSpan(localObject3, i1, n, 33);
              if (((x4.c)localObject1).k()) {
                a(i1, n, (w4.b)localObject3);
              }
            }
          }
          if ((localObject1 instanceof d))
          {
            localObject1 = (d)localObject1;
            j = arrayOfInt.length;
            for (i = 0; i < j; i++)
            {
              n = arrayOfInt[i];
              localObject3 = new v4.c(str1, (d)localObject1);
              i1 = n + m;
              localSpannableStringBuilder.setSpan(localObject3, n, i1, 33);
              if (((d)localObject1).t()) {
                a(n, i1, (w4.b)localObject3);
              }
            }
            i = 0;
          }
          else if ((localObject1 instanceof x4.b))
          {
            localObject1 = (x4.b)localObject1;
            j = k;
            if (k == 0)
            {
              localObject3 = ((x4.b)localObject1).f();
              if (localObject3 != null) {
                ((TextView)localObject3).setMovementMethod(w4.a.a());
              }
              j = 1;
            }
            i = 0;
            k = arrayOfInt[0];
            localSpannableStringBuilder.setSpan(new v4.a((x4.b)localObject1), k, m + k, 33);
            k = j;
          }
          else
          {
            j = 0;
            i = j;
            if ((localObject1 instanceof e))
            {
              localObject1 = (e)localObject1;
              i = arrayOfInt[0];
              localSpannableStringBuilder.setSpan(((e)localObject1).g(), i, m + i, ((e)localObject1).f());
              i = j;
            }
          }
        }
      }
    }
    return localSpannableStringBuilder;
  }
  
  static class a
  {
    int a;
    int b;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     u4.a
 * JD-Core Version:    0.7.0.1
 */