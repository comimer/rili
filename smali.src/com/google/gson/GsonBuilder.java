package com.google.gson;

import com.google.gson.internal..Gson.Preconditions;
import com.google.gson.internal.Excluder;
import com.google.gson.internal.bind.TreeTypeAdapter;
import com.google.gson.internal.bind.TypeAdapters;
import com.google.gson.reflect.TypeToken;
import java.lang.reflect.Type;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class GsonBuilder
{
  private boolean complexMapKeySerialization;
  private String datePattern;
  private int dateStyle;
  private boolean escapeHtmlChars;
  private Excluder excluder = Excluder.DEFAULT;
  private final List<TypeAdapterFactory> factories;
  private FieldNamingStrategy fieldNamingPolicy = FieldNamingPolicy.IDENTITY;
  private boolean generateNonExecutableJson;
  private final List<TypeAdapterFactory> hierarchyFactories;
  private final Map<Type, InstanceCreator<?>> instanceCreators;
  private boolean lenient;
  private LongSerializationPolicy longSerializationPolicy = LongSerializationPolicy.DEFAULT;
  private boolean prettyPrinting;
  private boolean serializeNulls;
  private boolean serializeSpecialFloatingPointValues;
  private int timeStyle;
  
  public GsonBuilder()
  {
    this.instanceCreators = new HashMap();
    this.factories = new ArrayList();
    this.hierarchyFactories = new ArrayList();
    this.serializeNulls = false;
    this.dateStyle = 2;
    this.timeStyle = 2;
    this.complexMapKeySerialization = false;
    this.serializeSpecialFloatingPointValues = false;
    this.escapeHtmlChars = true;
    this.prettyPrinting = false;
    this.generateNonExecutableJson = false;
    this.lenient = false;
  }
  
  GsonBuilder(Gson paramGson)
  {
    HashMap localHashMap = new HashMap();
    this.instanceCreators = localHashMap;
    ArrayList localArrayList1 = new ArrayList();
    this.factories = localArrayList1;
    ArrayList localArrayList2 = new ArrayList();
    this.hierarchyFactories = localArrayList2;
    this.serializeNulls = false;
    this.dateStyle = 2;
    this.timeStyle = 2;
    this.complexMapKeySerialization = false;
    this.serializeSpecialFloatingPointValues = false;
    this.escapeHtmlChars = true;
    this.prettyPrinting = false;
    this.generateNonExecutableJson = false;
    this.lenient = false;
    this.excluder = paramGson.excluder;
    this.fieldNamingPolicy = paramGson.fieldNamingStrategy;
    localHashMap.putAll(paramGson.instanceCreators);
    this.serializeNulls = paramGson.serializeNulls;
    this.complexMapKeySerialization = paramGson.complexMapKeySerialization;
    this.generateNonExecutableJson = paramGson.generateNonExecutableJson;
    this.escapeHtmlChars = paramGson.htmlSafe;
    this.prettyPrinting = paramGson.prettyPrinting;
    this.lenient = paramGson.lenient;
    this.serializeSpecialFloatingPointValues = paramGson.serializeSpecialFloatingPointValues;
    this.longSerializationPolicy = paramGson.longSerializationPolicy;
    this.datePattern = paramGson.datePattern;
    this.dateStyle = paramGson.dateStyle;
    this.timeStyle = paramGson.timeStyle;
    localArrayList1.addAll(paramGson.builderFactories);
    localArrayList2.addAll(paramGson.builderHierarchyFactories);
  }
  
  private void addTypeAdaptersForDate(String paramString, int paramInt1, int paramInt2, List<TypeAdapterFactory> paramList)
  {
    DefaultDateTypeAdapter localDefaultDateTypeAdapter2;
    DefaultDateTypeAdapter localDefaultDateTypeAdapter3;
    if ((paramString != null) && (!"".equals(paramString.trim())))
    {
      DefaultDateTypeAdapter localDefaultDateTypeAdapter1 = new DefaultDateTypeAdapter(java.util.Date.class, paramString);
      localDefaultDateTypeAdapter2 = new DefaultDateTypeAdapter(Timestamp.class, paramString);
      localDefaultDateTypeAdapter3 = new DefaultDateTypeAdapter(java.sql.Date.class, paramString);
      paramString = localDefaultDateTypeAdapter1;
    }
    else
    {
      if ((paramInt1 == 2) || (paramInt2 == 2)) {
        return;
      }
      paramString = new DefaultDateTypeAdapter(java.util.Date.class, paramInt1, paramInt2);
      localDefaultDateTypeAdapter2 = new DefaultDateTypeAdapter(Timestamp.class, paramInt1, paramInt2);
      localDefaultDateTypeAdapter3 = new DefaultDateTypeAdapter(java.sql.Date.class, paramInt1, paramInt2);
    }
    paramList.add(TypeAdapters.newFactory(java.util.Date.class, paramString));
    paramList.add(TypeAdapters.newFactory(Timestamp.class, localDefaultDateTypeAdapter2));
    paramList.add(TypeAdapters.newFactory(java.sql.Date.class, localDefaultDateTypeAdapter3));
  }
  
  public GsonBuilder addDeserializationExclusionStrategy(ExclusionStrategy paramExclusionStrategy)
  {
    this.excluder = this.excluder.withExclusionStrategy(paramExclusionStrategy, false, true);
    return this;
  }
  
  public GsonBuilder addSerializationExclusionStrategy(ExclusionStrategy paramExclusionStrategy)
  {
    this.excluder = this.excluder.withExclusionStrategy(paramExclusionStrategy, true, false);
    return this;
  }
  
  public Gson create()
  {
    ArrayList localArrayList1 = new ArrayList(this.factories.size() + this.hierarchyFactories.size() + 3);
    localArrayList1.addAll(this.factories);
    Collections.reverse(localArrayList1);
    ArrayList localArrayList2 = new ArrayList(this.hierarchyFactories);
    Collections.reverse(localArrayList2);
    localArrayList1.addAll(localArrayList2);
    addTypeAdaptersForDate(this.datePattern, this.dateStyle, this.timeStyle, localArrayList1);
    return new Gson(this.excluder, this.fieldNamingPolicy, this.instanceCreators, this.serializeNulls, this.complexMapKeySerialization, this.generateNonExecutableJson, this.escapeHtmlChars, this.prettyPrinting, this.lenient, this.serializeSpecialFloatingPointValues, this.longSerializationPolicy, this.datePattern, this.dateStyle, this.timeStyle, this.factories, this.hierarchyFactories, localArrayList1);
  }
  
  public GsonBuilder disableHtmlEscaping()
  {
    this.escapeHtmlChars = false;
    return this;
  }
  
  public GsonBuilder disableInnerClassSerialization()
  {
    this.excluder = this.excluder.disableInnerClassSerialization();
    return this;
  }
  
  public GsonBuilder enableComplexMapKeySerialization()
  {
    this.complexMapKeySerialization = true;
    return this;
  }
  
  public GsonBuilder excludeFieldsWithModifiers(int... paramVarArgs)
  {
    this.excluder = this.excluder.withModifiers(paramVarArgs);
    return this;
  }
  
  public GsonBuilder excludeFieldsWithoutExposeAnnotation()
  {
    this.excluder = this.excluder.excludeFieldsWithoutExposeAnnotation();
    return this;
  }
  
  public GsonBuilder generateNonExecutableJson()
  {
    this.generateNonExecutableJson = true;
    return this;
  }
  
  public GsonBuilder registerTypeAdapter(Type paramType, Object paramObject)
  {
    boolean bool1 = paramObject instanceof JsonSerializer;
    boolean bool2;
    if ((!bool1) && (!(paramObject instanceof JsonDeserializer)) && (!(paramObject instanceof InstanceCreator)) && (!(paramObject instanceof TypeAdapter))) {
      bool2 = false;
    } else {
      bool2 = true;
    }
    .Gson.Preconditions.checkArgument(bool2);
    if ((paramObject instanceof InstanceCreator)) {
      this.instanceCreators.put(paramType, (InstanceCreator)paramObject);
    }
    if ((bool1) || ((paramObject instanceof JsonDeserializer)))
    {
      TypeToken localTypeToken = TypeToken.get(paramType);
      this.factories.add(TreeTypeAdapter.newFactoryWithMatchRawType(localTypeToken, paramObject));
    }
    if ((paramObject instanceof TypeAdapter)) {
      this.factories.add(TypeAdapters.newFactory(TypeToken.get(paramType), (TypeAdapter)paramObject));
    }
    return this;
  }
  
  public GsonBuilder registerTypeAdapterFactory(TypeAdapterFactory paramTypeAdapterFactory)
  {
    this.factories.add(paramTypeAdapterFactory);
    return this;
  }
  
  public GsonBuilder registerTypeHierarchyAdapter(Class<?> paramClass, Object paramObject)
  {
    boolean bool1 = paramObject instanceof JsonSerializer;
    boolean bool2;
    if ((!bool1) && (!(paramObject instanceof JsonDeserializer)) && (!(paramObject instanceof TypeAdapter))) {
      bool2 = false;
    } else {
      bool2 = true;
    }
    .Gson.Preconditions.checkArgument(bool2);
    if (((paramObject instanceof JsonDeserializer)) || (bool1)) {
      this.hierarchyFactories.add(TreeTypeAdapter.newTypeHierarchyFactory(paramClass, paramObject));
    }
    if ((paramObject instanceof TypeAdapter)) {
      this.factories.add(TypeAdapters.newTypeHierarchyFactory(paramClass, (TypeAdapter)paramObject));
    }
    return this;
  }
  
  public GsonBuilder serializeNulls()
  {
    this.serializeNulls = true;
    return this;
  }
  
  public GsonBuilder serializeSpecialFloatingPointValues()
  {
    this.serializeSpecialFloatingPointValues = true;
    return this;
  }
  
  public GsonBuilder setDateFormat(int paramInt)
  {
    this.dateStyle = paramInt;
    this.datePattern = null;
    return this;
  }
  
  public GsonBuilder setDateFormat(int paramInt1, int paramInt2)
  {
    this.dateStyle = paramInt1;
    this.timeStyle = paramInt2;
    this.datePattern = null;
    return this;
  }
  
  public GsonBuilder setDateFormat(String paramString)
  {
    this.datePattern = paramString;
    return this;
  }
  
  public GsonBuilder setExclusionStrategies(ExclusionStrategy... paramVarArgs)
  {
    int i = paramVarArgs.length;
    for (int j = 0; j < i; j++)
    {
      ExclusionStrategy localExclusionStrategy = paramVarArgs[j];
      this.excluder = this.excluder.withExclusionStrategy(localExclusionStrategy, true, true);
    }
    return this;
  }
  
  public GsonBuilder setFieldNamingPolicy(FieldNamingPolicy paramFieldNamingPolicy)
  {
    this.fieldNamingPolicy = paramFieldNamingPolicy;
    return this;
  }
  
  public GsonBuilder setFieldNamingStrategy(FieldNamingStrategy paramFieldNamingStrategy)
  {
    this.fieldNamingPolicy = paramFieldNamingStrategy;
    return this;
  }
  
  public GsonBuilder setLenient()
  {
    this.lenient = true;
    return this;
  }
  
  public GsonBuilder setLongSerializationPolicy(LongSerializationPolicy paramLongSerializationPolicy)
  {
    this.longSerializationPolicy = paramLongSerializationPolicy;
    return this;
  }
  
  public GsonBuilder setPrettyPrinting()
  {
    this.prettyPrinting = true;
    return this;
  }
  
  public GsonBuilder setVersion(double paramDouble)
  {
    this.excluder = this.excluder.withVersion(paramDouble);
    return this;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.gson.GsonBuilder
 * JD-Core Version:    0.7.0.1
 */