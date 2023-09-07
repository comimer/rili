package com.google.gson;

import com.google.gson.internal.ConstructorConstructor;
import com.google.gson.internal.Excluder;
import com.google.gson.internal.Primitives;
import com.google.gson.internal.Streams;
import com.google.gson.internal.bind.ArrayTypeAdapter;
import com.google.gson.internal.bind.CollectionTypeAdapterFactory;
import com.google.gson.internal.bind.DateTypeAdapter;
import com.google.gson.internal.bind.JsonAdapterAnnotationTypeAdapterFactory;
import com.google.gson.internal.bind.JsonTreeReader;
import com.google.gson.internal.bind.JsonTreeWriter;
import com.google.gson.internal.bind.MapTypeAdapterFactory;
import com.google.gson.internal.bind.ObjectTypeAdapter;
import com.google.gson.internal.bind.ReflectiveTypeAdapterFactory;
import com.google.gson.internal.bind.SqlDateTypeAdapter;
import com.google.gson.internal.bind.TimeTypeAdapter;
import com.google.gson.internal.bind.TypeAdapters;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import com.google.gson.stream.MalformedJsonException;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.io.StringWriter;
import java.io.Writer;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicLongArray;

public final class Gson
{
  static final boolean DEFAULT_COMPLEX_MAP_KEYS = false;
  static final boolean DEFAULT_ESCAPE_HTML = true;
  static final boolean DEFAULT_JSON_NON_EXECUTABLE = false;
  static final boolean DEFAULT_LENIENT = false;
  static final boolean DEFAULT_PRETTY_PRINT = false;
  static final boolean DEFAULT_SERIALIZE_NULLS = false;
  static final boolean DEFAULT_SPECIALIZE_FLOAT_VALUES = false;
  private static final String JSON_NON_EXECUTABLE_PREFIX = ")]}'\n";
  private static final TypeToken<?> NULL_KEY_SURROGATE = TypeToken.get(Object.class);
  final List<TypeAdapterFactory> builderFactories;
  final List<TypeAdapterFactory> builderHierarchyFactories;
  private final ThreadLocal<Map<TypeToken<?>, FutureTypeAdapter<?>>> calls = new ThreadLocal();
  final boolean complexMapKeySerialization;
  private final ConstructorConstructor constructorConstructor;
  final String datePattern;
  final int dateStyle;
  final Excluder excluder;
  final List<TypeAdapterFactory> factories;
  final FieldNamingStrategy fieldNamingStrategy;
  final boolean generateNonExecutableJson;
  final boolean htmlSafe;
  final Map<Type, InstanceCreator<?>> instanceCreators;
  private final JsonAdapterAnnotationTypeAdapterFactory jsonAdapterFactory;
  final boolean lenient;
  final LongSerializationPolicy longSerializationPolicy;
  final boolean prettyPrinting;
  final boolean serializeNulls;
  final boolean serializeSpecialFloatingPointValues;
  final int timeStyle;
  private final Map<TypeToken<?>, TypeAdapter<?>> typeTokenCache = new ConcurrentHashMap();
  
  public Gson()
  {
    this(Excluder.DEFAULT, FieldNamingPolicy.IDENTITY, Collections.emptyMap(), false, false, false, true, false, false, false, LongSerializationPolicy.DEFAULT, null, 2, 2, Collections.emptyList(), Collections.emptyList(), Collections.emptyList());
  }
  
  Gson(Excluder paramExcluder, FieldNamingStrategy paramFieldNamingStrategy, Map<Type, InstanceCreator<?>> paramMap, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4, boolean paramBoolean5, boolean paramBoolean6, boolean paramBoolean7, LongSerializationPolicy paramLongSerializationPolicy, String paramString, int paramInt1, int paramInt2, List<TypeAdapterFactory> paramList1, List<TypeAdapterFactory> paramList2, List<TypeAdapterFactory> paramList3)
  {
    this.excluder = paramExcluder;
    this.fieldNamingStrategy = paramFieldNamingStrategy;
    this.instanceCreators = paramMap;
    paramMap = new ConstructorConstructor(paramMap);
    this.constructorConstructor = paramMap;
    this.serializeNulls = paramBoolean1;
    this.complexMapKeySerialization = paramBoolean2;
    this.generateNonExecutableJson = paramBoolean3;
    this.htmlSafe = paramBoolean4;
    this.prettyPrinting = paramBoolean5;
    this.lenient = paramBoolean6;
    this.serializeSpecialFloatingPointValues = paramBoolean7;
    this.longSerializationPolicy = paramLongSerializationPolicy;
    this.datePattern = paramString;
    this.dateStyle = paramInt1;
    this.timeStyle = paramInt2;
    this.builderFactories = paramList1;
    this.builderHierarchyFactories = paramList2;
    paramString = new ArrayList();
    paramString.add(TypeAdapters.JSON_ELEMENT_FACTORY);
    paramString.add(ObjectTypeAdapter.FACTORY);
    paramString.add(paramExcluder);
    paramString.addAll(paramList3);
    paramString.add(TypeAdapters.STRING_FACTORY);
    paramString.add(TypeAdapters.INTEGER_FACTORY);
    paramString.add(TypeAdapters.BOOLEAN_FACTORY);
    paramString.add(TypeAdapters.BYTE_FACTORY);
    paramString.add(TypeAdapters.SHORT_FACTORY);
    paramLongSerializationPolicy = longAdapter(paramLongSerializationPolicy);
    paramString.add(TypeAdapters.newFactory(Long.TYPE, Long.class, paramLongSerializationPolicy));
    paramString.add(TypeAdapters.newFactory(Double.TYPE, Double.class, doubleAdapter(paramBoolean7)));
    paramString.add(TypeAdapters.newFactory(Float.TYPE, Float.class, floatAdapter(paramBoolean7)));
    paramString.add(TypeAdapters.NUMBER_FACTORY);
    paramString.add(TypeAdapters.ATOMIC_INTEGER_FACTORY);
    paramString.add(TypeAdapters.ATOMIC_BOOLEAN_FACTORY);
    paramString.add(TypeAdapters.newFactory(AtomicLong.class, atomicLongAdapter(paramLongSerializationPolicy)));
    paramString.add(TypeAdapters.newFactory(AtomicLongArray.class, atomicLongArrayAdapter(paramLongSerializationPolicy)));
    paramString.add(TypeAdapters.ATOMIC_INTEGER_ARRAY_FACTORY);
    paramString.add(TypeAdapters.CHARACTER_FACTORY);
    paramString.add(TypeAdapters.STRING_BUILDER_FACTORY);
    paramString.add(TypeAdapters.STRING_BUFFER_FACTORY);
    paramString.add(TypeAdapters.newFactory(BigDecimal.class, TypeAdapters.BIG_DECIMAL));
    paramString.add(TypeAdapters.newFactory(BigInteger.class, TypeAdapters.BIG_INTEGER));
    paramString.add(TypeAdapters.URL_FACTORY);
    paramString.add(TypeAdapters.URI_FACTORY);
    paramString.add(TypeAdapters.UUID_FACTORY);
    paramString.add(TypeAdapters.CURRENCY_FACTORY);
    paramString.add(TypeAdapters.LOCALE_FACTORY);
    paramString.add(TypeAdapters.INET_ADDRESS_FACTORY);
    paramString.add(TypeAdapters.BIT_SET_FACTORY);
    paramString.add(DateTypeAdapter.FACTORY);
    paramString.add(TypeAdapters.CALENDAR_FACTORY);
    paramString.add(TimeTypeAdapter.FACTORY);
    paramString.add(SqlDateTypeAdapter.FACTORY);
    paramString.add(TypeAdapters.TIMESTAMP_FACTORY);
    paramString.add(ArrayTypeAdapter.FACTORY);
    paramString.add(TypeAdapters.CLASS_FACTORY);
    paramString.add(new CollectionTypeAdapterFactory(paramMap));
    paramString.add(new MapTypeAdapterFactory(paramMap, paramBoolean2));
    paramLongSerializationPolicy = new JsonAdapterAnnotationTypeAdapterFactory(paramMap);
    this.jsonAdapterFactory = paramLongSerializationPolicy;
    paramString.add(paramLongSerializationPolicy);
    paramString.add(TypeAdapters.ENUM_FACTORY);
    paramString.add(new ReflectiveTypeAdapterFactory(paramMap, paramFieldNamingStrategy, paramExcluder, paramLongSerializationPolicy));
    this.factories = Collections.unmodifiableList(paramString);
  }
  
  private static void assertFullConsumption(Object paramObject, JsonReader paramJsonReader)
  {
    if (paramObject != null) {
      try
      {
        if (paramJsonReader.peek() != JsonToken.END_DOCUMENT)
        {
          paramObject = new com/google/gson/JsonIOException;
          paramObject.<init>("JSON document was not fully consumed.");
          throw paramObject;
        }
      }
      catch (IOException paramObject)
      {
        throw new JsonIOException(paramObject);
      }
      catch (MalformedJsonException paramObject)
      {
        throw new JsonSyntaxException(paramObject);
      }
    }
  }
  
  private static TypeAdapter<AtomicLong> atomicLongAdapter(TypeAdapter<Number> paramTypeAdapter)
  {
    new TypeAdapter()
    {
      public AtomicLong read(JsonReader paramAnonymousJsonReader)
        throws IOException
      {
        return new AtomicLong(((Number)this.val$longAdapter.read(paramAnonymousJsonReader)).longValue());
      }
      
      public void write(JsonWriter paramAnonymousJsonWriter, AtomicLong paramAnonymousAtomicLong)
        throws IOException
      {
        this.val$longAdapter.write(paramAnonymousJsonWriter, Long.valueOf(paramAnonymousAtomicLong.get()));
      }
    }.nullSafe();
  }
  
  private static TypeAdapter<AtomicLongArray> atomicLongArrayAdapter(TypeAdapter<Number> paramTypeAdapter)
  {
    new TypeAdapter()
    {
      public AtomicLongArray read(JsonReader paramAnonymousJsonReader)
        throws IOException
      {
        ArrayList localArrayList = new ArrayList();
        paramAnonymousJsonReader.beginArray();
        while (paramAnonymousJsonReader.hasNext()) {
          localArrayList.add(Long.valueOf(((Number)this.val$longAdapter.read(paramAnonymousJsonReader)).longValue()));
        }
        paramAnonymousJsonReader.endArray();
        int i = localArrayList.size();
        paramAnonymousJsonReader = new AtomicLongArray(i);
        for (int j = 0; j < i; j++) {
          paramAnonymousJsonReader.set(j, ((Long)localArrayList.get(j)).longValue());
        }
        return paramAnonymousJsonReader;
      }
      
      public void write(JsonWriter paramAnonymousJsonWriter, AtomicLongArray paramAnonymousAtomicLongArray)
        throws IOException
      {
        paramAnonymousJsonWriter.beginArray();
        int i = paramAnonymousAtomicLongArray.length();
        for (int j = 0; j < i; j++) {
          this.val$longAdapter.write(paramAnonymousJsonWriter, Long.valueOf(paramAnonymousAtomicLongArray.get(j)));
        }
        paramAnonymousJsonWriter.endArray();
      }
    }.nullSafe();
  }
  
  static void checkValidFloatingPoint(double paramDouble)
  {
    if ((!Double.isNaN(paramDouble)) && (!Double.isInfinite(paramDouble))) {
      return;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(paramDouble);
    localStringBuilder.append(" is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method.");
    throw new IllegalArgumentException(localStringBuilder.toString());
  }
  
  private TypeAdapter<Number> doubleAdapter(boolean paramBoolean)
  {
    if (paramBoolean) {
      return TypeAdapters.DOUBLE;
    }
    new TypeAdapter()
    {
      public Double read(JsonReader paramAnonymousJsonReader)
        throws IOException
      {
        if (paramAnonymousJsonReader.peek() == JsonToken.NULL)
        {
          paramAnonymousJsonReader.nextNull();
          return null;
        }
        return Double.valueOf(paramAnonymousJsonReader.nextDouble());
      }
      
      public void write(JsonWriter paramAnonymousJsonWriter, Number paramAnonymousNumber)
        throws IOException
      {
        if (paramAnonymousNumber == null)
        {
          paramAnonymousJsonWriter.nullValue();
          return;
        }
        Gson.checkValidFloatingPoint(paramAnonymousNumber.doubleValue());
        paramAnonymousJsonWriter.value(paramAnonymousNumber);
      }
    };
  }
  
  private TypeAdapter<Number> floatAdapter(boolean paramBoolean)
  {
    if (paramBoolean) {
      return TypeAdapters.FLOAT;
    }
    new TypeAdapter()
    {
      public Float read(JsonReader paramAnonymousJsonReader)
        throws IOException
      {
        if (paramAnonymousJsonReader.peek() == JsonToken.NULL)
        {
          paramAnonymousJsonReader.nextNull();
          return null;
        }
        return Float.valueOf((float)paramAnonymousJsonReader.nextDouble());
      }
      
      public void write(JsonWriter paramAnonymousJsonWriter, Number paramAnonymousNumber)
        throws IOException
      {
        if (paramAnonymousNumber == null)
        {
          paramAnonymousJsonWriter.nullValue();
          return;
        }
        Gson.checkValidFloatingPoint(paramAnonymousNumber.floatValue());
        paramAnonymousJsonWriter.value(paramAnonymousNumber);
      }
    };
  }
  
  private static TypeAdapter<Number> longAdapter(LongSerializationPolicy paramLongSerializationPolicy)
  {
    if (paramLongSerializationPolicy == LongSerializationPolicy.DEFAULT) {
      return TypeAdapters.LONG;
    }
    new TypeAdapter()
    {
      public Number read(JsonReader paramAnonymousJsonReader)
        throws IOException
      {
        if (paramAnonymousJsonReader.peek() == JsonToken.NULL)
        {
          paramAnonymousJsonReader.nextNull();
          return null;
        }
        return Long.valueOf(paramAnonymousJsonReader.nextLong());
      }
      
      public void write(JsonWriter paramAnonymousJsonWriter, Number paramAnonymousNumber)
        throws IOException
      {
        if (paramAnonymousNumber == null)
        {
          paramAnonymousJsonWriter.nullValue();
          return;
        }
        paramAnonymousJsonWriter.value(paramAnonymousNumber.toString());
      }
    };
  }
  
  public Excluder excluder()
  {
    return this.excluder;
  }
  
  public FieldNamingStrategy fieldNamingStrategy()
  {
    return this.fieldNamingStrategy;
  }
  
  public <T> T fromJson(JsonElement paramJsonElement, Class<T> paramClass)
    throws JsonSyntaxException
  {
    paramJsonElement = fromJson(paramJsonElement, paramClass);
    return Primitives.wrap(paramClass).cast(paramJsonElement);
  }
  
  public <T> T fromJson(JsonElement paramJsonElement, Type paramType)
    throws JsonSyntaxException
  {
    if (paramJsonElement == null) {
      return null;
    }
    return fromJson(new JsonTreeReader(paramJsonElement), paramType);
  }
  
  /* Error */
  public <T> T fromJson(JsonReader paramJsonReader, Type paramType)
    throws JsonIOException, JsonSyntaxException
  {
    // Byte code:
    //   0: aload_1
    //   1: invokevirtual 471	com/google/gson/stream/JsonReader:isLenient	()Z
    //   4: istore_3
    //   5: iconst_1
    //   6: istore 4
    //   8: aload_1
    //   9: iconst_1
    //   10: invokevirtual 475	com/google/gson/stream/JsonReader:setLenient	(Z)V
    //   13: aload_1
    //   14: invokevirtual 356	com/google/gson/stream/JsonReader:peek	()Lcom/google/gson/stream/JsonToken;
    //   17: pop
    //   18: iconst_0
    //   19: istore 4
    //   21: aload_0
    //   22: aload_2
    //   23: invokestatic 478	com/google/gson/reflect/TypeToken:get	(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;
    //   26: invokevirtual 482	com/google/gson/Gson:getAdapter	(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;
    //   29: aload_1
    //   30: invokevirtual 486	com/google/gson/TypeAdapter:read	(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    //   33: astore_2
    //   34: aload_1
    //   35: iload_3
    //   36: invokevirtual 475	com/google/gson/stream/JsonReader:setLenient	(Z)V
    //   39: aload_2
    //   40: areturn
    //   41: astore_2
    //   42: goto +107 -> 149
    //   45: astore_2
    //   46: new 467	java/lang/AssertionError
    //   49: astore 5
    //   51: new 398	java/lang/StringBuilder
    //   54: astore 6
    //   56: aload 6
    //   58: invokespecial 399	java/lang/StringBuilder:<init>	()V
    //   61: aload 6
    //   63: ldc_w 488
    //   66: invokevirtual 408	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   69: pop
    //   70: aload 6
    //   72: aload_2
    //   73: invokevirtual 493	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   76: invokevirtual 408	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   79: pop
    //   80: aload 5
    //   82: aload 6
    //   84: invokevirtual 414	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   87: aload_2
    //   88: invokespecial 496	java/lang/AssertionError:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   91: aload 5
    //   93: athrow
    //   94: astore 6
    //   96: new 374	com/google/gson/JsonSyntaxException
    //   99: astore_2
    //   100: aload_2
    //   101: aload 6
    //   103: invokespecial 375	com/google/gson/JsonSyntaxException:<init>	(Ljava/lang/Throwable;)V
    //   106: aload_2
    //   107: athrow
    //   108: astore 6
    //   110: new 374	com/google/gson/JsonSyntaxException
    //   113: astore_2
    //   114: aload_2
    //   115: aload 6
    //   117: invokespecial 375	com/google/gson/JsonSyntaxException:<init>	(Ljava/lang/Throwable;)V
    //   120: aload_2
    //   121: athrow
    //   122: astore_2
    //   123: iload 4
    //   125: ifeq +10 -> 135
    //   128: aload_1
    //   129: iload_3
    //   130: invokevirtual 475	com/google/gson/stream/JsonReader:setLenient	(Z)V
    //   133: aconst_null
    //   134: areturn
    //   135: new 374	com/google/gson/JsonSyntaxException
    //   138: astore 6
    //   140: aload 6
    //   142: aload_2
    //   143: invokespecial 375	com/google/gson/JsonSyntaxException:<init>	(Ljava/lang/Throwable;)V
    //   146: aload 6
    //   148: athrow
    //   149: aload_1
    //   150: iload_3
    //   151: invokevirtual 475	com/google/gson/stream/JsonReader:setLenient	(Z)V
    //   154: aload_2
    //   155: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	156	0	this	Gson
    //   0	156	1	paramJsonReader	JsonReader
    //   0	156	2	paramType	Type
    //   4	147	3	bool	boolean
    //   6	118	4	i	int
    //   49	43	5	localAssertionError	AssertionError
    //   54	29	6	localStringBuilder	StringBuilder
    //   94	8	6	localIOException	IOException
    //   108	8	6	localIllegalStateException	IllegalStateException
    //   138	9	6	localJsonSyntaxException	JsonSyntaxException
    // Exception table:
    //   from	to	target	type
    //   13	18	41	finally
    //   21	34	41	finally
    //   46	94	41	finally
    //   96	108	41	finally
    //   110	122	41	finally
    //   135	149	41	finally
    //   13	18	45	java/lang/AssertionError
    //   21	34	45	java/lang/AssertionError
    //   13	18	94	java/io/IOException
    //   21	34	94	java/io/IOException
    //   13	18	108	java/lang/IllegalStateException
    //   21	34	108	java/lang/IllegalStateException
    //   13	18	122	java/io/EOFException
    //   21	34	122	java/io/EOFException
  }
  
  public <T> T fromJson(Reader paramReader, Class<T> paramClass)
    throws JsonSyntaxException, JsonIOException
  {
    JsonReader localJsonReader = newJsonReader(paramReader);
    paramReader = fromJson(localJsonReader, paramClass);
    assertFullConsumption(paramReader, localJsonReader);
    return Primitives.wrap(paramClass).cast(paramReader);
  }
  
  public <T> T fromJson(Reader paramReader, Type paramType)
    throws JsonIOException, JsonSyntaxException
  {
    paramReader = newJsonReader(paramReader);
    paramType = fromJson(paramReader, paramType);
    assertFullConsumption(paramType, paramReader);
    return paramType;
  }
  
  public <T> T fromJson(String paramString, Class<T> paramClass)
    throws JsonSyntaxException
  {
    paramString = fromJson(paramString, paramClass);
    return Primitives.wrap(paramClass).cast(paramString);
  }
  
  public <T> T fromJson(String paramString, Type paramType)
    throws JsonSyntaxException
  {
    if (paramString == null) {
      return null;
    }
    return fromJson(new StringReader(paramString), paramType);
  }
  
  public <T> TypeAdapter<T> getAdapter(TypeToken<T> paramTypeToken)
  {
    Object localObject1 = this.typeTokenCache;
    if (paramTypeToken == null) {
      localObject3 = NULL_KEY_SURROGATE;
    } else {
      localObject3 = paramTypeToken;
    }
    Object localObject3 = (TypeAdapter)((Map)localObject1).get(localObject3);
    if (localObject3 != null) {
      return localObject3;
    }
    localObject1 = (Map)this.calls.get();
    int i = 0;
    localObject3 = localObject1;
    if (localObject1 == null)
    {
      localObject3 = new HashMap();
      this.calls.set(localObject3);
      i = 1;
    }
    localObject1 = (FutureTypeAdapter)((Map)localObject3).get(paramTypeToken);
    if (localObject1 != null) {
      return localObject1;
    }
    try
    {
      Object localObject4 = new com/google/gson/Gson$FutureTypeAdapter;
      ((FutureTypeAdapter)localObject4).<init>();
      ((Map)localObject3).put(paramTypeToken, localObject4);
      localObject1 = this.factories.iterator();
      while (((Iterator)localObject1).hasNext())
      {
        TypeAdapter localTypeAdapter = ((TypeAdapterFactory)((Iterator)localObject1).next()).create(this, paramTypeToken);
        if (localTypeAdapter != null)
        {
          ((FutureTypeAdapter)localObject4).setDelegate(localTypeAdapter);
          this.typeTokenCache.put(paramTypeToken, localTypeAdapter);
          return localTypeAdapter;
        }
      }
      localObject4 = new java/lang/IllegalArgumentException;
      localObject1 = new java/lang/StringBuilder;
      ((StringBuilder)localObject1).<init>();
      ((StringBuilder)localObject1).append("GSON (2.8.5) cannot handle ");
      ((StringBuilder)localObject1).append(paramTypeToken);
      ((IllegalArgumentException)localObject4).<init>(((StringBuilder)localObject1).toString());
      throw ((Throwable)localObject4);
    }
    finally
    {
      ((Map)localObject3).remove(paramTypeToken);
      if (i != 0) {
        this.calls.remove();
      }
    }
  }
  
  public <T> TypeAdapter<T> getAdapter(Class<T> paramClass)
  {
    return getAdapter(TypeToken.get(paramClass));
  }
  
  public <T> TypeAdapter<T> getDelegateAdapter(TypeAdapterFactory paramTypeAdapterFactory, TypeToken<T> paramTypeToken)
  {
    Object localObject1 = paramTypeAdapterFactory;
    if (!this.factories.contains(paramTypeAdapterFactory)) {
      localObject1 = this.jsonAdapterFactory;
    }
    int i = 0;
    paramTypeAdapterFactory = this.factories.iterator();
    while (paramTypeAdapterFactory.hasNext())
    {
      Object localObject2 = (TypeAdapterFactory)paramTypeAdapterFactory.next();
      if (i == 0)
      {
        if (localObject2 == localObject1) {
          i = 1;
        }
      }
      else
      {
        localObject2 = ((TypeAdapterFactory)localObject2).create(this, paramTypeToken);
        if (localObject2 != null) {
          return localObject2;
        }
      }
    }
    paramTypeAdapterFactory = new StringBuilder();
    paramTypeAdapterFactory.append("GSON cannot serialize ");
    paramTypeAdapterFactory.append(paramTypeToken);
    throw new IllegalArgumentException(paramTypeAdapterFactory.toString());
  }
  
  public boolean htmlSafe()
  {
    return this.htmlSafe;
  }
  
  public GsonBuilder newBuilder()
  {
    return new GsonBuilder(this);
  }
  
  public JsonReader newJsonReader(Reader paramReader)
  {
    paramReader = new JsonReader(paramReader);
    paramReader.setLenient(this.lenient);
    return paramReader;
  }
  
  public JsonWriter newJsonWriter(Writer paramWriter)
    throws IOException
  {
    if (this.generateNonExecutableJson) {
      paramWriter.write(")]}'\n");
    }
    paramWriter = new JsonWriter(paramWriter);
    if (this.prettyPrinting) {
      paramWriter.setIndent("  ");
    }
    paramWriter.setSerializeNulls(this.serializeNulls);
    return paramWriter;
  }
  
  public boolean serializeNulls()
  {
    return this.serializeNulls;
  }
  
  public String toJson(JsonElement paramJsonElement)
  {
    StringWriter localStringWriter = new StringWriter();
    toJson(paramJsonElement, localStringWriter);
    return localStringWriter.toString();
  }
  
  public String toJson(Object paramObject)
  {
    if (paramObject == null) {
      return toJson(JsonNull.INSTANCE);
    }
    return toJson(paramObject, paramObject.getClass());
  }
  
  public String toJson(Object paramObject, Type paramType)
  {
    StringWriter localStringWriter = new StringWriter();
    toJson(paramObject, paramType, localStringWriter);
    return localStringWriter.toString();
  }
  
  /* Error */
  public void toJson(JsonElement paramJsonElement, JsonWriter paramJsonWriter)
    throws JsonIOException
  {
    // Byte code:
    //   0: aload_2
    //   1: invokevirtual 637	com/google/gson/stream/JsonWriter:isLenient	()Z
    //   4: istore_3
    //   5: aload_2
    //   6: iconst_1
    //   7: invokevirtual 638	com/google/gson/stream/JsonWriter:setLenient	(Z)V
    //   10: aload_2
    //   11: invokevirtual 641	com/google/gson/stream/JsonWriter:isHtmlSafe	()Z
    //   14: istore 4
    //   16: aload_2
    //   17: aload_0
    //   18: getfield 141	com/google/gson/Gson:htmlSafe	Z
    //   21: invokevirtual 644	com/google/gson/stream/JsonWriter:setHtmlSafe	(Z)V
    //   24: aload_2
    //   25: invokevirtual 647	com/google/gson/stream/JsonWriter:getSerializeNulls	()Z
    //   28: istore 5
    //   30: aload_2
    //   31: aload_0
    //   32: getfield 135	com/google/gson/Gson:serializeNulls	Z
    //   35: invokevirtual 607	com/google/gson/stream/JsonWriter:setSerializeNulls	(Z)V
    //   38: aload_1
    //   39: aload_2
    //   40: invokestatic 651	com/google/gson/internal/Streams:write	(Lcom/google/gson/JsonElement;Lcom/google/gson/stream/JsonWriter;)V
    //   43: aload_2
    //   44: iload_3
    //   45: invokevirtual 638	com/google/gson/stream/JsonWriter:setLenient	(Z)V
    //   48: aload_2
    //   49: iload 4
    //   51: invokevirtual 644	com/google/gson/stream/JsonWriter:setHtmlSafe	(Z)V
    //   54: aload_2
    //   55: iload 5
    //   57: invokevirtual 607	com/google/gson/stream/JsonWriter:setSerializeNulls	(Z)V
    //   60: return
    //   61: astore_1
    //   62: goto +67 -> 129
    //   65: astore_1
    //   66: new 467	java/lang/AssertionError
    //   69: astore 6
    //   71: new 398	java/lang/StringBuilder
    //   74: astore 7
    //   76: aload 7
    //   78: invokespecial 399	java/lang/StringBuilder:<init>	()V
    //   81: aload 7
    //   83: ldc_w 488
    //   86: invokevirtual 408	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   89: pop
    //   90: aload 7
    //   92: aload_1
    //   93: invokevirtual 493	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   96: invokevirtual 408	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   99: pop
    //   100: aload 6
    //   102: aload 7
    //   104: invokevirtual 414	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   107: aload_1
    //   108: invokespecial 496	java/lang/AssertionError:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   111: aload 6
    //   113: athrow
    //   114: astore_1
    //   115: new 364	com/google/gson/JsonIOException
    //   118: astore 7
    //   120: aload 7
    //   122: aload_1
    //   123: invokespecial 372	com/google/gson/JsonIOException:<init>	(Ljava/lang/Throwable;)V
    //   126: aload 7
    //   128: athrow
    //   129: aload_2
    //   130: iload_3
    //   131: invokevirtual 638	com/google/gson/stream/JsonWriter:setLenient	(Z)V
    //   134: aload_2
    //   135: iload 4
    //   137: invokevirtual 644	com/google/gson/stream/JsonWriter:setHtmlSafe	(Z)V
    //   140: aload_2
    //   141: iload 5
    //   143: invokevirtual 607	com/google/gson/stream/JsonWriter:setSerializeNulls	(Z)V
    //   146: aload_1
    //   147: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	148	0	this	Gson
    //   0	148	1	paramJsonElement	JsonElement
    //   0	148	2	paramJsonWriter	JsonWriter
    //   4	127	3	bool1	boolean
    //   14	122	4	bool2	boolean
    //   28	114	5	bool3	boolean
    //   69	43	6	localAssertionError	AssertionError
    //   74	53	7	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   38	43	61	finally
    //   66	114	61	finally
    //   115	129	61	finally
    //   38	43	65	java/lang/AssertionError
    //   38	43	114	java/io/IOException
  }
  
  public void toJson(JsonElement paramJsonElement, Appendable paramAppendable)
    throws JsonIOException
  {
    try
    {
      toJson(paramJsonElement, newJsonWriter(Streams.writerForAppendable(paramAppendable)));
      return;
    }
    catch (IOException paramJsonElement)
    {
      throw new JsonIOException(paramJsonElement);
    }
  }
  
  public void toJson(Object paramObject, Appendable paramAppendable)
    throws JsonIOException
  {
    if (paramObject != null) {
      toJson(paramObject, paramObject.getClass(), paramAppendable);
    } else {
      toJson(JsonNull.INSTANCE, paramAppendable);
    }
  }
  
  /* Error */
  public void toJson(Object paramObject, Type paramType, JsonWriter paramJsonWriter)
    throws JsonIOException
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_2
    //   2: invokestatic 478	com/google/gson/reflect/TypeToken:get	(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;
    //   5: invokevirtual 482	com/google/gson/Gson:getAdapter	(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;
    //   8: astore_2
    //   9: aload_3
    //   10: invokevirtual 637	com/google/gson/stream/JsonWriter:isLenient	()Z
    //   13: istore 4
    //   15: aload_3
    //   16: iconst_1
    //   17: invokevirtual 638	com/google/gson/stream/JsonWriter:setLenient	(Z)V
    //   20: aload_3
    //   21: invokevirtual 641	com/google/gson/stream/JsonWriter:isHtmlSafe	()Z
    //   24: istore 5
    //   26: aload_3
    //   27: aload_0
    //   28: getfield 141	com/google/gson/Gson:htmlSafe	Z
    //   31: invokevirtual 644	com/google/gson/stream/JsonWriter:setHtmlSafe	(Z)V
    //   34: aload_3
    //   35: invokevirtual 647	com/google/gson/stream/JsonWriter:getSerializeNulls	()Z
    //   38: istore 6
    //   40: aload_3
    //   41: aload_0
    //   42: getfield 135	com/google/gson/Gson:serializeNulls	Z
    //   45: invokevirtual 607	com/google/gson/stream/JsonWriter:setSerializeNulls	(Z)V
    //   48: aload_2
    //   49: aload_3
    //   50: aload_1
    //   51: invokevirtual 664	com/google/gson/TypeAdapter:write	(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    //   54: aload_3
    //   55: iload 4
    //   57: invokevirtual 638	com/google/gson/stream/JsonWriter:setLenient	(Z)V
    //   60: aload_3
    //   61: iload 5
    //   63: invokevirtual 644	com/google/gson/stream/JsonWriter:setHtmlSafe	(Z)V
    //   66: aload_3
    //   67: iload 6
    //   69: invokevirtual 607	com/google/gson/stream/JsonWriter:setSerializeNulls	(Z)V
    //   72: return
    //   73: astore_1
    //   74: goto +61 -> 135
    //   77: astore_1
    //   78: new 467	java/lang/AssertionError
    //   81: astore_2
    //   82: new 398	java/lang/StringBuilder
    //   85: astore 7
    //   87: aload 7
    //   89: invokespecial 399	java/lang/StringBuilder:<init>	()V
    //   92: aload 7
    //   94: ldc_w 488
    //   97: invokevirtual 408	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   100: pop
    //   101: aload 7
    //   103: aload_1
    //   104: invokevirtual 493	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   107: invokevirtual 408	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   110: pop
    //   111: aload_2
    //   112: aload 7
    //   114: invokevirtual 414	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   117: aload_1
    //   118: invokespecial 496	java/lang/AssertionError:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   121: aload_2
    //   122: athrow
    //   123: astore_1
    //   124: new 364	com/google/gson/JsonIOException
    //   127: astore_2
    //   128: aload_2
    //   129: aload_1
    //   130: invokespecial 372	com/google/gson/JsonIOException:<init>	(Ljava/lang/Throwable;)V
    //   133: aload_2
    //   134: athrow
    //   135: aload_3
    //   136: iload 4
    //   138: invokevirtual 638	com/google/gson/stream/JsonWriter:setLenient	(Z)V
    //   141: aload_3
    //   142: iload 5
    //   144: invokevirtual 644	com/google/gson/stream/JsonWriter:setHtmlSafe	(Z)V
    //   147: aload_3
    //   148: iload 6
    //   150: invokevirtual 607	com/google/gson/stream/JsonWriter:setSerializeNulls	(Z)V
    //   153: aload_1
    //   154: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	155	0	this	Gson
    //   0	155	1	paramObject	Object
    //   0	155	2	paramType	Type
    //   0	155	3	paramJsonWriter	JsonWriter
    //   13	124	4	bool1	boolean
    //   24	119	5	bool2	boolean
    //   38	111	6	bool3	boolean
    //   85	28	7	localStringBuilder	StringBuilder
    // Exception table:
    //   from	to	target	type
    //   48	54	73	finally
    //   78	123	73	finally
    //   124	135	73	finally
    //   48	54	77	java/lang/AssertionError
    //   48	54	123	java/io/IOException
  }
  
  public void toJson(Object paramObject, Type paramType, Appendable paramAppendable)
    throws JsonIOException
  {
    try
    {
      toJson(paramObject, paramType, newJsonWriter(Streams.writerForAppendable(paramAppendable)));
      return;
    }
    catch (IOException paramObject)
    {
      throw new JsonIOException(paramObject);
    }
  }
  
  public JsonElement toJsonTree(Object paramObject)
  {
    if (paramObject == null) {
      return JsonNull.INSTANCE;
    }
    return toJsonTree(paramObject, paramObject.getClass());
  }
  
  public JsonElement toJsonTree(Object paramObject, Type paramType)
  {
    JsonTreeWriter localJsonTreeWriter = new JsonTreeWriter();
    toJson(paramObject, paramType, localJsonTreeWriter);
    return localJsonTreeWriter.get();
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("{serializeNulls:");
    localStringBuilder.append(this.serializeNulls);
    localStringBuilder.append(",factories:");
    localStringBuilder.append(this.factories);
    localStringBuilder.append(",instanceCreators:");
    localStringBuilder.append(this.constructorConstructor);
    localStringBuilder.append("}");
    return localStringBuilder.toString();
  }
  
  static class FutureTypeAdapter<T>
    extends TypeAdapter<T>
  {
    private TypeAdapter<T> delegate;
    
    public T read(JsonReader paramJsonReader)
      throws IOException
    {
      TypeAdapter localTypeAdapter = this.delegate;
      if (localTypeAdapter != null) {
        return localTypeAdapter.read(paramJsonReader);
      }
      throw new IllegalStateException();
    }
    
    public void setDelegate(TypeAdapter<T> paramTypeAdapter)
    {
      if (this.delegate == null)
      {
        this.delegate = paramTypeAdapter;
        return;
      }
      throw new AssertionError();
    }
    
    public void write(JsonWriter paramJsonWriter, T paramT)
      throws IOException
    {
      TypeAdapter localTypeAdapter = this.delegate;
      if (localTypeAdapter != null)
      {
        localTypeAdapter.write(paramJsonWriter, paramT);
        return;
      }
      throw new IllegalStateException();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.gson.Gson
 * JD-Core Version:    0.7.0.1
 */