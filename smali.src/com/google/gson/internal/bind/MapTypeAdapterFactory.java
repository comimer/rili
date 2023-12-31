package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonPrimitive;
import com.google.gson.JsonSyntaxException;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.internal..Gson.Types;
import com.google.gson.internal.ConstructorConstructor;
import com.google.gson.internal.JsonReaderInternalAccess;
import com.google.gson.internal.ObjectConstructor;
import com.google.gson.internal.Streams;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class MapTypeAdapterFactory
  implements TypeAdapterFactory
{
  final boolean complexMapKeySerialization;
  private final ConstructorConstructor constructorConstructor;
  
  public MapTypeAdapterFactory(ConstructorConstructor paramConstructorConstructor, boolean paramBoolean)
  {
    this.constructorConstructor = paramConstructorConstructor;
    this.complexMapKeySerialization = paramBoolean;
  }
  
  private TypeAdapter<?> getKeyAdapter(Gson paramGson, Type paramType)
  {
    if ((paramType != Boolean.TYPE) && (paramType != Boolean.class)) {
      paramGson = paramGson.getAdapter(TypeToken.get(paramType));
    } else {
      paramGson = TypeAdapters.BOOLEAN_AS_STRING;
    }
    return paramGson;
  }
  
  public <T> TypeAdapter<T> create(Gson paramGson, TypeToken<T> paramTypeToken)
  {
    Object localObject = paramTypeToken.getType();
    if (!Map.class.isAssignableFrom(paramTypeToken.getRawType())) {
      return null;
    }
    localObject = .Gson.Types.getMapKeyAndValueTypes((Type)localObject, .Gson.Types.getRawType((Type)localObject));
    TypeAdapter localTypeAdapter1 = getKeyAdapter(paramGson, localObject[0]);
    TypeAdapter localTypeAdapter2 = paramGson.getAdapter(TypeToken.get(localObject[1]));
    paramTypeToken = this.constructorConstructor.get(paramTypeToken);
    return new Adapter(paramGson, localObject[0], localTypeAdapter1, localObject[1], localTypeAdapter2, paramTypeToken);
  }
  
  private final class Adapter<K, V>
    extends TypeAdapter<Map<K, V>>
  {
    private final ObjectConstructor<? extends Map<K, V>> constructor;
    private final TypeAdapter<K> keyTypeAdapter;
    private final TypeAdapter<V> valueTypeAdapter;
    
    public Adapter(Type paramType1, TypeAdapter<K> paramTypeAdapter, Type paramType2, TypeAdapter<V> paramTypeAdapter1, ObjectConstructor<? extends Map<K, V>> paramObjectConstructor)
    {
      this.keyTypeAdapter = new TypeAdapterRuntimeTypeWrapper(paramType1, paramType2, paramTypeAdapter);
      this.valueTypeAdapter = new TypeAdapterRuntimeTypeWrapper(paramType1, paramObjectConstructor, paramTypeAdapter1);
      Object localObject;
      this.constructor = localObject;
    }
    
    private String keyToString(JsonElement paramJsonElement)
    {
      if (paramJsonElement.isJsonPrimitive())
      {
        paramJsonElement = paramJsonElement.getAsJsonPrimitive();
        if (paramJsonElement.isNumber()) {
          return String.valueOf(paramJsonElement.getAsNumber());
        }
        if (paramJsonElement.isBoolean()) {
          return Boolean.toString(paramJsonElement.getAsBoolean());
        }
        if (paramJsonElement.isString()) {
          return paramJsonElement.getAsString();
        }
        throw new AssertionError();
      }
      if (paramJsonElement.isJsonNull()) {
        return "null";
      }
      throw new AssertionError();
    }
    
    public Map<K, V> read(JsonReader paramJsonReader)
      throws IOException
    {
      Object localObject = paramJsonReader.peek();
      if (localObject == JsonToken.NULL)
      {
        paramJsonReader.nextNull();
        return null;
      }
      Map localMap = (Map)this.constructor.construct();
      if (localObject == JsonToken.BEGIN_ARRAY)
      {
        paramJsonReader.beginArray();
        while (paramJsonReader.hasNext())
        {
          paramJsonReader.beginArray();
          localObject = this.keyTypeAdapter.read(paramJsonReader);
          if (localMap.put(localObject, this.valueTypeAdapter.read(paramJsonReader)) == null)
          {
            paramJsonReader.endArray();
          }
          else
          {
            paramJsonReader = new StringBuilder();
            paramJsonReader.append("duplicate key: ");
            paramJsonReader.append(localObject);
            throw new JsonSyntaxException(paramJsonReader.toString());
          }
        }
        paramJsonReader.endArray();
      }
      else
      {
        paramJsonReader.beginObject();
        while (paramJsonReader.hasNext())
        {
          JsonReaderInternalAccess.INSTANCE.promoteNameToValue(paramJsonReader);
          localObject = this.keyTypeAdapter.read(paramJsonReader);
          if (localMap.put(localObject, this.valueTypeAdapter.read(paramJsonReader)) != null)
          {
            paramJsonReader = new StringBuilder();
            paramJsonReader.append("duplicate key: ");
            paramJsonReader.append(localObject);
            throw new JsonSyntaxException(paramJsonReader.toString());
          }
        }
        paramJsonReader.endObject();
      }
      return localMap;
    }
    
    public void write(JsonWriter paramJsonWriter, Map<K, V> paramMap)
      throws IOException
    {
      if (paramMap == null)
      {
        paramJsonWriter.nullValue();
        return;
      }
      if (!MapTypeAdapterFactory.this.complexMapKeySerialization)
      {
        paramJsonWriter.beginObject();
        paramMap = paramMap.entrySet().iterator();
        while (paramMap.hasNext())
        {
          localObject = (Map.Entry)paramMap.next();
          paramJsonWriter.name(String.valueOf(((Map.Entry)localObject).getKey()));
          this.valueTypeAdapter.write(paramJsonWriter, ((Map.Entry)localObject).getValue());
        }
        paramJsonWriter.endObject();
        return;
      }
      ArrayList localArrayList = new ArrayList(paramMap.size());
      Object localObject = new ArrayList(paramMap.size());
      Iterator localIterator = paramMap.entrySet().iterator();
      int i = 0;
      int j = 0;
      int k = 0;
      int m;
      while (localIterator.hasNext())
      {
        paramMap = (Map.Entry)localIterator.next();
        JsonElement localJsonElement = this.keyTypeAdapter.toJsonTree(paramMap.getKey());
        localArrayList.add(localJsonElement);
        ((List)localObject).add(paramMap.getValue());
        if ((!localJsonElement.isJsonArray()) && (!localJsonElement.isJsonObject())) {
          m = 0;
        } else {
          m = 1;
        }
        k |= m;
      }
      if (k != 0)
      {
        paramJsonWriter.beginArray();
        m = localArrayList.size();
        for (k = j; k < m; k++)
        {
          paramJsonWriter.beginArray();
          Streams.write((JsonElement)localArrayList.get(k), paramJsonWriter);
          this.valueTypeAdapter.write(paramJsonWriter, ((List)localObject).get(k));
          paramJsonWriter.endArray();
        }
        paramJsonWriter.endArray();
      }
      else
      {
        paramJsonWriter.beginObject();
        m = localArrayList.size();
        for (k = i; k < m; k++)
        {
          paramJsonWriter.name(keyToString((JsonElement)localArrayList.get(k)));
          this.valueTypeAdapter.write(paramJsonWriter, ((List)localObject).get(k));
        }
        paramJsonWriter.endObject();
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.gson.internal.bind.MapTypeAdapterFactory
 * JD-Core Version:    0.7.0.1
 */