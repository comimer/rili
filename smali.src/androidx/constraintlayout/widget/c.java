package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.Log;
import android.util.SparseArray;
import android.util.Xml;
import java.io.IOException;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

public class c
{
  private final ConstraintLayout a;
  d b;
  int c = -1;
  int d = -1;
  private SparseArray<a> e = new SparseArray();
  private SparseArray<d> f = new SparseArray();
  
  c(Context paramContext, ConstraintLayout paramConstraintLayout, int paramInt)
  {
    this.a = paramConstraintLayout;
    a(paramContext, paramInt);
  }
  
  private void a(Context paramContext, int paramInt)
  {
    XmlResourceParser localXmlResourceParser = paramContext.getResources().getXml(paramInt);
    Object localObject1 = null;
    try
    {
      paramInt = localXmlResourceParser.getEventType();
      for (;;)
      {
        int i = 1;
        if (paramInt == 1) {
          break;
        }
        Object localObject2;
        if (paramInt != 0)
        {
          if (paramInt != 2)
          {
            localObject2 = localObject1;
          }
          else
          {
            localObject2 = localXmlResourceParser.getName();
            switch (((String)localObject2).hashCode())
            {
            default: 
              break;
            case 1901439077: 
              if (((String)localObject2).equals("Variant")) {
                paramInt = 3;
              }
              break;
            case 1657696882: 
              if (((String)localObject2).equals("layoutDescription")) {
                paramInt = 0;
              }
              break;
            case 1382829617: 
              if (((String)localObject2).equals("StateSet")) {
                paramInt = i;
              }
              break;
            case 80204913: 
              if (((String)localObject2).equals("State")) {
                paramInt = 2;
              }
              break;
            case -1349929691: 
              if (((String)localObject2).equals("ConstraintSet")) {
                paramInt = 4;
              }
              break;
            }
            paramInt = -1;
            if (paramInt != 2)
            {
              if (paramInt != 3)
              {
                if (paramInt != 4)
                {
                  localObject2 = localObject1;
                }
                else
                {
                  b(paramContext, localXmlResourceParser);
                  localObject2 = localObject1;
                }
              }
              else
              {
                b localb = new androidx/constraintlayout/widget/c$b;
                localb.<init>(paramContext, localXmlResourceParser);
                localObject2 = localObject1;
                if (localObject1 != null)
                {
                  localObject1.a(localb);
                  localObject2 = localObject1;
                }
              }
            }
            else
            {
              localObject2 = new androidx/constraintlayout/widget/c$a;
              ((a)localObject2).<init>(paramContext, localXmlResourceParser);
              this.e.put(((a)localObject2).a, localObject2);
            }
          }
        }
        else
        {
          localXmlResourceParser.getName();
          localObject2 = localObject1;
        }
        paramInt = localXmlResourceParser.next();
        localObject1 = localObject2;
      }
      return;
    }
    catch (IOException paramContext)
    {
      paramContext.printStackTrace();
    }
    catch (XmlPullParserException paramContext)
    {
      paramContext.printStackTrace();
    }
  }
  
  private void b(Context paramContext, XmlPullParser paramXmlPullParser)
  {
    d locald = new d();
    int i = paramXmlPullParser.getAttributeCount();
    for (int j = 0; j < i; j++)
    {
      String str1 = paramXmlPullParser.getAttributeName(j);
      String str2 = paramXmlPullParser.getAttributeValue(j);
      if ((str1 != null) && (str2 != null) && ("id".equals(str1)))
      {
        if (str2.contains("/"))
        {
          str1 = str2.substring(str2.indexOf('/') + 1);
          j = paramContext.getResources().getIdentifier(str1, "id", paramContext.getPackageName());
        }
        else
        {
          j = -1;
        }
        i = j;
        if (j == -1) {
          if (str2.length() > 1)
          {
            i = Integer.parseInt(str2.substring(1));
          }
          else
          {
            Log.e("ConstraintLayoutStates", "error in parsing id");
            i = j;
          }
        }
        locald.r(paramContext, paramXmlPullParser);
        this.f.put(i, locald);
        break;
      }
    }
  }
  
  public void c(f paramf) {}
  
  public void d(int paramInt, float paramFloat1, float paramFloat2)
  {
    int i = this.c;
    Object localObject1;
    Object localObject2;
    if (i == paramInt)
    {
      if (paramInt == -1) {
        localObject1 = (a)this.e.valueAt(0);
      } else {
        localObject1 = (a)this.e.get(i);
      }
      paramInt = this.d;
      if ((paramInt != -1) && (((b)((a)localObject1).b.get(paramInt)).a(paramFloat1, paramFloat2))) {
        return;
      }
      paramInt = ((a)localObject1).b(paramFloat1, paramFloat2);
      if (this.d == paramInt) {
        return;
      }
      if (paramInt == -1) {
        localObject2 = this.b;
      } else {
        localObject2 = ((b)((a)localObject1).b.get(paramInt)).f;
      }
      if (paramInt != -1) {
        i = ((b)((a)localObject1).b.get(paramInt)).e;
      }
      if (localObject2 == null) {
        return;
      }
      this.d = paramInt;
      ((d)localObject2).c(this.a);
    }
    else
    {
      this.c = paramInt;
      localObject2 = (a)this.e.get(paramInt);
      int j = ((a)localObject2).b(paramFloat1, paramFloat2);
      if (j == -1) {
        localObject1 = ((a)localObject2).d;
      } else {
        localObject1 = ((b)((a)localObject2).b.get(j)).f;
      }
      if (j != -1) {
        i = ((b)((a)localObject2).b.get(j)).e;
      }
      if (localObject1 == null)
      {
        localObject1 = new StringBuilder();
        ((StringBuilder)localObject1).append("NO Constraint set found ! id=");
        ((StringBuilder)localObject1).append(paramInt);
        ((StringBuilder)localObject1).append(", dim =");
        ((StringBuilder)localObject1).append(paramFloat1);
        ((StringBuilder)localObject1).append(", ");
        ((StringBuilder)localObject1).append(paramFloat2);
        Log.v("ConstraintLayoutStates", ((StringBuilder)localObject1).toString());
        return;
      }
      this.d = j;
      ((d)localObject1).c(this.a);
    }
  }
  
  static class a
  {
    int a;
    ArrayList<c.b> b = new ArrayList();
    int c = -1;
    d d;
    
    public a(Context paramContext, XmlPullParser paramXmlPullParser)
    {
      paramXmlPullParser = paramContext.obtainStyledAttributes(Xml.asAttributeSet(paramXmlPullParser), j.t7);
      int i = paramXmlPullParser.getIndexCount();
      for (int j = 0; j < i; j++)
      {
        int k = paramXmlPullParser.getIndex(j);
        if (k == j.u7)
        {
          this.a = paramXmlPullParser.getResourceId(k, this.a);
        }
        else if (k == j.v7)
        {
          this.c = paramXmlPullParser.getResourceId(k, this.c);
          Object localObject = paramContext.getResources().getResourceTypeName(this.c);
          paramContext.getResources().getResourceName(this.c);
          if ("layout".equals(localObject))
          {
            localObject = new d();
            this.d = ((d)localObject);
            ((d)localObject).g(paramContext, this.c);
          }
        }
      }
      paramXmlPullParser.recycle();
    }
    
    void a(c.b paramb)
    {
      this.b.add(paramb);
    }
    
    public int b(float paramFloat1, float paramFloat2)
    {
      for (int i = 0; i < this.b.size(); i++) {
        if (((c.b)this.b.get(i)).a(paramFloat1, paramFloat2)) {
          return i;
        }
      }
      return -1;
    }
  }
  
  static class b
  {
    float a = (0.0F / 0.0F);
    float b = (0.0F / 0.0F);
    float c = (0.0F / 0.0F);
    float d = (0.0F / 0.0F);
    int e = -1;
    d f;
    
    public b(Context paramContext, XmlPullParser paramXmlPullParser)
    {
      paramXmlPullParser = paramContext.obtainStyledAttributes(Xml.asAttributeSet(paramXmlPullParser), j.R7);
      int i = paramXmlPullParser.getIndexCount();
      for (int j = 0; j < i; j++)
      {
        int k = paramXmlPullParser.getIndex(j);
        if (k == j.S7)
        {
          this.e = paramXmlPullParser.getResourceId(k, this.e);
          Object localObject = paramContext.getResources().getResourceTypeName(this.e);
          paramContext.getResources().getResourceName(this.e);
          if ("layout".equals(localObject))
          {
            localObject = new d();
            this.f = ((d)localObject);
            ((d)localObject).g(paramContext, this.e);
          }
        }
        else if (k == j.T7)
        {
          this.d = paramXmlPullParser.getDimension(k, this.d);
        }
        else if (k == j.U7)
        {
          this.b = paramXmlPullParser.getDimension(k, this.b);
        }
        else if (k == j.V7)
        {
          this.c = paramXmlPullParser.getDimension(k, this.c);
        }
        else if (k == j.W7)
        {
          this.a = paramXmlPullParser.getDimension(k, this.a);
        }
        else
        {
          Log.v("ConstraintLayoutStates", "Unknown tag");
        }
      }
      paramXmlPullParser.recycle();
    }
    
    boolean a(float paramFloat1, float paramFloat2)
    {
      if ((!Float.isNaN(this.a)) && (paramFloat1 < this.a)) {
        return false;
      }
      if ((!Float.isNaN(this.b)) && (paramFloat2 < this.b)) {
        return false;
      }
      if ((!Float.isNaN(this.c)) && (paramFloat1 > this.c)) {
        return false;
      }
      return (Float.isNaN(this.d)) || (paramFloat2 <= this.d);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.constraintlayout.widget.c
 * JD-Core Version:    0.7.0.1
 */