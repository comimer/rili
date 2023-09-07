package at.bitfire.ical4android;

import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import net.fortuna.ical4j.data.DefaultParameterFactorySupplier;
import net.fortuna.ical4j.data.DefaultPropertyFactorySupplier;
import net.fortuna.ical4j.model.Content;
import net.fortuna.ical4j.model.Parameter;
import net.fortuna.ical4j.model.ParameterBuilder;
import net.fortuna.ical4j.model.ParameterFactory;
import net.fortuna.ical4j.model.ParameterList;
import net.fortuna.ical4j.model.Property;
import net.fortuna.ical4j.model.PropertyBuilder;
import net.fortuna.ical4j.model.PropertyFactory;
import org.json.JSONArray;
import org.json.JSONObject;

@Metadata(d1={""}, d2={"Lat/bitfire/ical4android/UnknownProperty;", "", "()V", "CONTENT_ITEM_TYPE", "", "MAX_UNKNOWN_PROPERTY_SIZE", "", "parameterFactorySupplier", "", "Lnet/fortuna/ical4j/model/ParameterFactory;", "Lnet/fortuna/ical4j/model/Parameter;", "kotlin.jvm.PlatformType", "", "getParameterFactorySupplier", "()Ljava/util/List;", "propertyFactorySupplier", "Lnet/fortuna/ical4j/model/PropertyFactory;", "Lnet/fortuna/ical4j/model/Property;", "getPropertyFactorySupplier", "fromJsonString", "jsonString", "toJsonString", "prop", "ical4android_release"}, k=1, mv={1, 7, 1}, xi=48)
public final class UnknownProperty
{
  public static final String CONTENT_ITEM_TYPE = "vnd.android.cursor.item/vnd.ical4android.unknown-property";
  public static final UnknownProperty INSTANCE = new UnknownProperty();
  public static final int MAX_UNKNOWN_PROPERTY_SIZE = 25000;
  private static final List<ParameterFactory<? extends Parameter>> parameterFactorySupplier;
  private static final List<PropertyFactory<? extends Property>> propertyFactorySupplier;
  
  static
  {
    List localList = new DefaultPropertyFactorySupplier().get();
    r.c(localList);
    propertyFactorySupplier = localList;
    localList = new DefaultParameterFactorySupplier().get();
    r.c(localList);
    parameterFactorySupplier = localList;
  }
  
  public final Property fromJsonString(String paramString)
  {
    r.f(paramString, "jsonString");
    Object localObject = new JSONArray(paramString);
    String str = ((JSONArray)localObject).getString(0);
    paramString = ((JSONArray)localObject).getString(1);
    paramString = new PropertyBuilder().factories(propertyFactorySupplier).name(str).value(paramString);
    JSONObject localJSONObject = ((JSONArray)localObject).optJSONObject(2);
    if (localJSONObject != null)
    {
      localObject = localJSONObject.keys();
      r.e(localObject, "jsonParams.keys()");
      while (((Iterator)localObject).hasNext())
      {
        str = (String)((Iterator)localObject).next();
        paramString.parameter(new ParameterBuilder().factories(parameterFactorySupplier).name(str).value(localJSONObject.getString(str)).build());
      }
    }
    paramString = paramString.build();
    r.e(paramString, "builder.build()");
    return paramString;
  }
  
  public final List<ParameterFactory<? extends Parameter>> getParameterFactorySupplier()
  {
    return parameterFactorySupplier;
  }
  
  public final List<PropertyFactory<? extends Property>> getPropertyFactorySupplier()
  {
    return propertyFactorySupplier;
  }
  
  public final String toJsonString(Property paramProperty)
  {
    r.f(paramProperty, "prop");
    JSONArray localJSONArray = new JSONArray();
    localJSONArray.put(paramProperty.getName());
    localJSONArray.put(paramProperty.getValue());
    if (!paramProperty.getParameters().isEmpty())
    {
      JSONObject localJSONObject = new JSONObject();
      paramProperty = paramProperty.getParameters().iterator();
      while (paramProperty.hasNext())
      {
        Parameter localParameter = (Parameter)paramProperty.next();
        localJSONObject.put(localParameter.getName(), localParameter.getValue());
      }
      localJSONArray.put(localJSONObject);
    }
    paramProperty = localJSONArray.toString();
    r.e(paramProperty, "json.toString()");
    return paramProperty;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     at.bitfire.ical4android.UnknownProperty
 * JD-Core Version:    0.7.0.1
 */