package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.util.TypedValue;
import android.util.Xml;
import android.view.View;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;
import org.xmlpull.v1.XmlPullParser;

public class ConstraintAttribute
{
  private boolean a;
  String b;
  private AttributeType c;
  private int d;
  private float e;
  private String f;
  boolean g;
  private int h;
  
  public ConstraintAttribute(ConstraintAttribute paramConstraintAttribute, Object paramObject)
  {
    this.a = false;
    this.b = paramConstraintAttribute.b;
    this.c = paramConstraintAttribute.c;
    f(paramObject);
  }
  
  public ConstraintAttribute(String paramString, AttributeType paramAttributeType, Object paramObject, boolean paramBoolean)
  {
    this.b = paramString;
    this.c = paramAttributeType;
    this.a = paramBoolean;
    f(paramObject);
  }
  
  public static HashMap<String, ConstraintAttribute> a(HashMap<String, ConstraintAttribute> paramHashMap, View paramView)
  {
    HashMap localHashMap = new HashMap();
    Class localClass = paramView.getClass();
    Iterator localIterator = paramHashMap.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      ConstraintAttribute localConstraintAttribute1 = (ConstraintAttribute)paramHashMap.get(str);
      try
      {
        Object localObject;
        if (str.equals("BackgroundColor"))
        {
          int i = ((ColorDrawable)paramView.getBackground()).getColor();
          localObject = new androidx/constraintlayout/widget/ConstraintAttribute;
          ((ConstraintAttribute)localObject).<init>(localConstraintAttribute1, Integer.valueOf(i));
          localHashMap.put(str, localObject);
        }
        else
        {
          localObject = new java/lang/StringBuilder;
          ((StringBuilder)localObject).<init>();
          ((StringBuilder)localObject).append("getMap");
          ((StringBuilder)localObject).append(str);
          localObject = localClass.getMethod(((StringBuilder)localObject).toString(), new Class[0]).invoke(paramView, new Object[0]);
          ConstraintAttribute localConstraintAttribute2 = new androidx/constraintlayout/widget/ConstraintAttribute;
          localConstraintAttribute2.<init>(localConstraintAttribute1, localObject);
          localHashMap.put(str, localConstraintAttribute2);
        }
      }
      catch (InvocationTargetException localInvocationTargetException)
      {
        localInvocationTargetException.printStackTrace();
      }
      catch (IllegalAccessException localIllegalAccessException)
      {
        localIllegalAccessException.printStackTrace();
      }
      catch (NoSuchMethodException localNoSuchMethodException)
      {
        localNoSuchMethodException.printStackTrace();
      }
    }
    return localHashMap;
  }
  
  public static void d(Context paramContext, XmlPullParser paramXmlPullParser, HashMap<String, ConstraintAttribute> paramHashMap)
  {
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(Xml.asAttributeSet(paramXmlPullParser), j.X4);
    int i = localTypedArray.getIndexCount();
    Object localObject1 = null;
    Object localObject2 = null;
    Object localObject3 = localObject2;
    int j = 0;
    int i1;
    for (int k = j; j < i; k = i1)
    {
      int m = localTypedArray.getIndex(j);
      Object localObject4;
      Object localObject5;
      if (m == j.Y4)
      {
        localObject1 = localTypedArray.getString(m);
        paramXmlPullParser = (XmlPullParser)localObject1;
        localObject4 = localObject2;
        localObject5 = localObject3;
        int n = k;
        if (localObject1 != null)
        {
          paramXmlPullParser = (XmlPullParser)localObject1;
          localObject4 = localObject2;
          localObject5 = localObject3;
          n = k;
          if (((String)localObject1).length() > 0)
          {
            paramXmlPullParser = new StringBuilder();
            paramXmlPullParser.append(Character.toUpperCase(((String)localObject1).charAt(0)));
            paramXmlPullParser.append(((String)localObject1).substring(1));
            paramXmlPullParser = paramXmlPullParser.toString();
            localObject4 = localObject2;
            localObject5 = localObject3;
            n = k;
          }
        }
      }
      else if (m == j.i5)
      {
        paramXmlPullParser = localTypedArray.getString(m);
        i1 = 1;
        localObject4 = localObject2;
        localObject5 = localObject3;
      }
      else if (m == j.Z4)
      {
        localObject4 = Boolean.valueOf(localTypedArray.getBoolean(m, false));
        localObject5 = AttributeType.BOOLEAN_TYPE;
        paramXmlPullParser = (XmlPullParser)localObject1;
        i1 = k;
      }
      else
      {
        if (m == j.b5)
        {
          paramXmlPullParser = AttributeType.COLOR_TYPE;
          localObject4 = Integer.valueOf(localTypedArray.getColor(m, 0));
        }
        for (;;)
        {
          localObject5 = paramXmlPullParser;
          paramXmlPullParser = (XmlPullParser)localObject1;
          i1 = k;
          break;
          if (m == j.a5)
          {
            paramXmlPullParser = AttributeType.COLOR_DRAWABLE_TYPE;
            localObject4 = Integer.valueOf(localTypedArray.getColor(m, 0));
          }
          else if (m == j.f5)
          {
            paramXmlPullParser = AttributeType.DIMENSION_TYPE;
            localObject4 = Float.valueOf(TypedValue.applyDimension(1, localTypedArray.getDimension(m, 0.0F), paramContext.getResources().getDisplayMetrics()));
          }
          else if (m == j.c5)
          {
            paramXmlPullParser = AttributeType.DIMENSION_TYPE;
            localObject4 = Float.valueOf(localTypedArray.getDimension(m, 0.0F));
          }
          else if (m == j.d5)
          {
            paramXmlPullParser = AttributeType.FLOAT_TYPE;
            localObject4 = Float.valueOf(localTypedArray.getFloat(m, (0.0F / 0.0F)));
          }
          else if (m == j.e5)
          {
            paramXmlPullParser = AttributeType.INT_TYPE;
            localObject4 = Integer.valueOf(localTypedArray.getInteger(m, -1));
          }
          else if (m == j.h5)
          {
            paramXmlPullParser = AttributeType.STRING_TYPE;
            localObject4 = localTypedArray.getString(m);
          }
          else
          {
            paramXmlPullParser = (XmlPullParser)localObject1;
            localObject4 = localObject2;
            localObject5 = localObject3;
            i1 = k;
            if (m != j.g5) {
              break;
            }
            paramXmlPullParser = AttributeType.REFERENCE_TYPE;
            int i2 = localTypedArray.getResourceId(m, -1);
            i1 = i2;
            if (i2 == -1) {
              i1 = localTypedArray.getInt(m, -1);
            }
            localObject4 = Integer.valueOf(i1);
          }
        }
      }
      j++;
      localObject1 = paramXmlPullParser;
      localObject2 = localObject4;
      localObject3 = localObject5;
    }
    if ((localObject1 != null) && (localObject2 != null)) {
      paramHashMap.put(localObject1, new ConstraintAttribute((String)localObject1, localObject3, localObject2, k));
    }
    localTypedArray.recycle();
  }
  
  public static void e(View paramView, HashMap<String, ConstraintAttribute> paramHashMap)
  {
    Class localClass = paramView.getClass();
    Iterator localIterator = paramHashMap.keySet().iterator();
    while (localIterator.hasNext())
    {
      Object localObject1 = (String)localIterator.next();
      ConstraintAttribute localConstraintAttribute = (ConstraintAttribute)paramHashMap.get(localObject1);
      Object localObject2;
      if (!localConstraintAttribute.a)
      {
        localObject2 = new StringBuilder();
        ((StringBuilder)localObject2).append("set");
        ((StringBuilder)localObject2).append((String)localObject1);
        localObject2 = ((StringBuilder)localObject2).toString();
      }
      else
      {
        localObject2 = localObject1;
      }
      try
      {
        switch (a.a[localConstraintAttribute.c.ordinal()])
        {
        default: 
          break;
        case 8: 
          localClass.getMethod((String)localObject2, new Class[] { Float.TYPE }).invoke(paramView, new Object[] { Float.valueOf(localConstraintAttribute.e) });
          break;
        case 7: 
          localClass.getMethod((String)localObject2, new Class[] { Float.TYPE }).invoke(paramView, new Object[] { Float.valueOf(localConstraintAttribute.e) });
          break;
        case 6: 
          localClass.getMethod((String)localObject2, new Class[] { Integer.TYPE }).invoke(paramView, new Object[] { Integer.valueOf(localConstraintAttribute.d) });
          break;
        case 5: 
          Method localMethod = localClass.getMethod((String)localObject2, new Class[] { Drawable.class });
          ColorDrawable localColorDrawable = new android/graphics/drawable/ColorDrawable;
          localColorDrawable.<init>();
          localColorDrawable.setColor(localConstraintAttribute.h);
          localMethod.invoke(paramView, new Object[] { localColorDrawable });
          break;
        case 4: 
          localClass.getMethod((String)localObject2, new Class[] { Integer.TYPE }).invoke(paramView, new Object[] { Integer.valueOf(localConstraintAttribute.h) });
          break;
        case 3: 
          localClass.getMethod((String)localObject2, new Class[] { CharSequence.class }).invoke(paramView, new Object[] { localConstraintAttribute.f });
          break;
        case 2: 
          localClass.getMethod((String)localObject2, new Class[] { Boolean.TYPE }).invoke(paramView, new Object[] { Boolean.valueOf(localConstraintAttribute.g) });
          break;
        case 1: 
          localClass.getMethod((String)localObject2, new Class[] { Integer.TYPE }).invoke(paramView, new Object[] { Integer.valueOf(localConstraintAttribute.d) });
        }
      }
      catch (InvocationTargetException localInvocationTargetException)
      {
        localObject2 = new StringBuilder();
        ((StringBuilder)localObject2).append(" Custom Attribute \"");
        ((StringBuilder)localObject2).append((String)localObject1);
        ((StringBuilder)localObject2).append("\" not found on ");
        ((StringBuilder)localObject2).append(localClass.getName());
        Log.e("TransitionLayout", ((StringBuilder)localObject2).toString());
        localInvocationTargetException.printStackTrace();
      }
      catch (IllegalAccessException localIllegalAccessException)
      {
        localObject2 = new StringBuilder();
        ((StringBuilder)localObject2).append(" Custom Attribute \"");
        ((StringBuilder)localObject2).append((String)localObject1);
        ((StringBuilder)localObject2).append("\" not found on ");
        ((StringBuilder)localObject2).append(localClass.getName());
        Log.e("TransitionLayout", ((StringBuilder)localObject2).toString());
        localIllegalAccessException.printStackTrace();
      }
      catch (NoSuchMethodException localNoSuchMethodException)
      {
        Log.e("TransitionLayout", localNoSuchMethodException.getMessage());
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append(" Custom Attribute \"");
        localStringBuilder.append((String)localObject1);
        localStringBuilder.append("\" not found on ");
        localStringBuilder.append(localClass.getName());
        Log.e("TransitionLayout", localStringBuilder.toString());
        localObject1 = new StringBuilder();
        ((StringBuilder)localObject1).append(localClass.getName());
        ((StringBuilder)localObject1).append(" must have a method ");
        ((StringBuilder)localObject1).append((String)localObject2);
        Log.e("TransitionLayout", ((StringBuilder)localObject1).toString());
      }
    }
  }
  
  public String b()
  {
    return this.b;
  }
  
  public AttributeType c()
  {
    return this.c;
  }
  
  public void f(Object paramObject)
  {
    switch (a.a[this.c.ordinal()])
    {
    default: 
      break;
    case 8: 
      this.e = ((Float)paramObject).floatValue();
      break;
    case 7: 
      this.e = ((Float)paramObject).floatValue();
      break;
    case 4: 
    case 5: 
      this.h = ((Integer)paramObject).intValue();
      break;
    case 3: 
      this.f = ((String)paramObject);
      break;
    case 2: 
      this.g = ((Boolean)paramObject).booleanValue();
      break;
    case 1: 
    case 6: 
      this.d = ((Integer)paramObject).intValue();
    }
  }
  
  public static enum AttributeType
  {
    static
    {
      FLOAT_TYPE = new AttributeType("FLOAT_TYPE", 1);
      COLOR_TYPE = new AttributeType("COLOR_TYPE", 2);
      COLOR_DRAWABLE_TYPE = new AttributeType("COLOR_DRAWABLE_TYPE", 3);
      STRING_TYPE = new AttributeType("STRING_TYPE", 4);
      BOOLEAN_TYPE = new AttributeType("BOOLEAN_TYPE", 5);
      DIMENSION_TYPE = new AttributeType("DIMENSION_TYPE", 6);
      REFERENCE_TYPE = new AttributeType("REFERENCE_TYPE", 7);
    }
    
    private AttributeType() {}
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.constraintlayout.widget.ConstraintAttribute
 * JD-Core Version:    0.7.0.1
 */