package at.bitfire.ical4android;

import android.content.ContentProviderClient;
import android.content.ContentValues;
import android.database.Cursor;
import android.database.DatabaseUtils;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;
import java.util.TimeZone;
import java.util.logging.Logger;
import kotlin.Metadata;
import kotlin.collections.t;
import kotlin.jvm.internal.r;
import kotlin.text.k;
import net.fortuna.ical4j.model.TimeZoneRegistry;
import net.fortuna.ical4j.model.property.DateProperty;

@Metadata(bv={}, d1={""}, d2={"Lat/bitfire/ical4android/MiscUtils;", "", "Lnet/fortuna/ical4j/model/property/DateProperty;", "date", "Lkotlin/u;", "androidifyTimeZone", "", "getTzId", "obj", "reflectionToString", "Landroid/content/ContentValues;", "values", "removeEmptyStrings", "<init>", "()V", "ContentProviderClientHelper", "CursorHelper", "ical4android_release"}, k=1, mv={1, 7, 1})
public final class MiscUtils
{
  public static final MiscUtils INSTANCE = new MiscUtils();
  
  public final void androidifyTimeZone(DateProperty paramDateProperty)
  {
    DateUtils localDateUtils = DateUtils.INSTANCE;
    if (localDateUtils.isDateTime(paramDateProperty))
    {
      r.c(paramDateProperty);
      Object localObject = paramDateProperty.getTimeZone();
      if (localObject == null) {
        return;
      }
      String str1 = ((TimeZone)localObject).getID();
      if (str1 == null) {
        return;
      }
      String str2 = localDateUtils.findAndroidTimezoneID(str1);
      if (!r.a(str1, str2))
      {
        localObject = Ical4Android.INSTANCE.getLog();
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("Android doesn't know time zone \"");
        localStringBuilder.append(str1);
        localStringBuilder.append("\", assuming device time zone \"");
        localStringBuilder.append(str2);
        localStringBuilder.append('"');
        ((Logger)localObject).warning(localStringBuilder.toString());
        paramDateProperty.setTimeZone(localDateUtils.getTzRegistry().getTimeZone(str2));
      }
    }
  }
  
  public final String getTzId(DateProperty paramDateProperty)
  {
    r.f(paramDateProperty, "date");
    boolean bool = DateUtils.INSTANCE.isDateTime(paramDateProperty);
    String str = "Etc/UTC";
    Object localObject = str;
    if (bool)
    {
      if (paramDateProperty.isUtc()) {
        paramDateProperty = str;
      } else if (paramDateProperty.getTimeZone() != null) {
        paramDateProperty = paramDateProperty.getTimeZone().getID();
      } else {
        paramDateProperty = TimeZone.getDefault().getID();
      }
      r.e(paramDateProperty, "{\n                when {…          }\n            }");
      localObject = paramDateProperty;
    }
    return localObject;
  }
  
  public final String reflectionToString(Object paramObject)
  {
    r.f(paramObject, "obj");
    LinkedList localLinkedList = new LinkedList();
    for (Object localObject1 = paramObject.getClass(); localObject1 != null; localObject1 = ((Class)localObject1).getSuperclass())
    {
      Object localObject2 = ((Class)localObject1).getDeclaredFields();
      r.e(localObject2, "clazz.declaredFields");
      Object localObject3 = new ArrayList();
      int i = 0;
      int j = localObject2.length;
      Object localObject4;
      while (i < j)
      {
        localObject4 = localObject2[i];
        if (!Modifier.isStatic(((Field)localObject4).getModifiers())) {
          ((Collection)localObject3).add(localObject4);
        }
        i++;
      }
      localObject3 = ((List)localObject3).iterator();
      while (((Iterator)localObject3).hasNext())
      {
        localObject2 = (Field)((Iterator)localObject3).next();
        ((AccessibleObject)localObject2).setAccessible(true);
        localObject4 = new StringBuilder();
        ((StringBuilder)localObject4).append(((Field)localObject2).getName());
        ((StringBuilder)localObject4).append('=');
        localObject2 = ((Field)localObject2).get(paramObject);
        if (localObject2 != null)
        {
          localObject2 = localObject2.toString();
          if (localObject2 != null)
          {
            localObject2 = k.L0((CharSequence)localObject2).toString();
            break label200;
          }
        }
        localObject2 = null;
        label200:
        ((StringBuilder)localObject4).append((String)localObject2);
        localLinkedList.add(((StringBuilder)localObject4).toString());
      }
    }
    localObject1 = new StringBuilder();
    ((StringBuilder)localObject1).append(paramObject.getClass().getSimpleName());
    ((StringBuilder)localObject1).append("=[");
    ((StringBuilder)localObject1).append(t.h0(localLinkedList, ", ", null, null, 0, null, null, 62, null));
    ((StringBuilder)localObject1).append(']');
    return ((StringBuilder)localObject1).toString();
  }
  
  public final ContentValues removeEmptyStrings(ContentValues paramContentValues)
  {
    r.f(paramContentValues, "values");
    Iterator localIterator = paramContentValues.keySet().iterator();
    while (localIterator.hasNext())
    {
      Object localObject = paramContentValues.get((String)localIterator.next());
      if ((localObject instanceof String))
      {
        int i;
        if (((CharSequence)localObject).length() == 0) {
          i = 1;
        } else {
          i = 0;
        }
        if (i != 0) {
          localIterator.remove();
        }
      }
    }
    return paramContentValues;
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lat/bitfire/ical4android/MiscUtils$ContentProviderClientHelper;", "", "Landroid/content/ContentProviderClient;", "Lkotlin/u;", "closeCompat", "<init>", "()V", "ical4android_release"}, k=1, mv={1, 7, 1})
  public static final class ContentProviderClientHelper
  {
    public static final ContentProviderClientHelper INSTANCE = new ContentProviderClientHelper();
    
    public final void closeCompat(ContentProviderClient paramContentProviderClient)
    {
      r.f(paramContentProviderClient, "<this>");
      paramContentProviderClient.close();
    }
  }
  
  @Metadata(d1={""}, d2={"Lat/bitfire/ical4android/MiscUtils$CursorHelper;", "", "()V", "toValues", "Landroid/content/ContentValues;", "Landroid/database/Cursor;", "removeEmptyRows", "", "ical4android_release"}, k=1, mv={1, 7, 1}, xi=48)
  public static final class CursorHelper
  {
    public static final CursorHelper INSTANCE = new CursorHelper();
    
    public final ContentValues toValues(Cursor paramCursor, boolean paramBoolean)
    {
      r.f(paramCursor, "<this>");
      ContentValues localContentValues = new ContentValues(paramCursor.getColumnCount());
      DatabaseUtils.cursorRowToContentValues(paramCursor, localContentValues);
      if (paramBoolean) {
        MiscUtils.INSTANCE.removeEmptyStrings(localContentValues);
      }
      return localContentValues;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     at.bitfire.ical4android.MiscUtils
 * JD-Core Version:    0.7.0.1
 */