package com.google.gson.internal;

import com.google.gson.ExclusionStrategy;
import com.google.gson.FieldAttributes;
import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.Since;
import com.google.gson.annotations.Until;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public final class Excluder
  implements TypeAdapterFactory, Cloneable
{
  public static final Excluder DEFAULT = new Excluder();
  private static final double IGNORE_VERSIONS = -1.0D;
  private List<ExclusionStrategy> deserializationStrategies = Collections.emptyList();
  private int modifiers = 136;
  private boolean requireExpose;
  private List<ExclusionStrategy> serializationStrategies = Collections.emptyList();
  private boolean serializeInnerClasses = true;
  private double version = -1.0D;
  
  private boolean excludeClassChecks(Class<?> paramClass)
  {
    if ((this.version != -1.0D) && (!isValidVersion((Since)paramClass.getAnnotation(Since.class), (Until)paramClass.getAnnotation(Until.class)))) {
      return true;
    }
    if ((!this.serializeInnerClasses) && (isInnerClass(paramClass))) {
      return true;
    }
    return isAnonymousOrLocal(paramClass);
  }
  
  private boolean excludeClassInStrategy(Class<?> paramClass, boolean paramBoolean)
  {
    if (paramBoolean) {
      localObject = this.serializationStrategies;
    } else {
      localObject = this.deserializationStrategies;
    }
    Object localObject = ((List)localObject).iterator();
    while (((Iterator)localObject).hasNext()) {
      if (((ExclusionStrategy)((Iterator)localObject).next()).shouldSkipClass(paramClass)) {
        return true;
      }
    }
    return false;
  }
  
  private boolean isAnonymousOrLocal(Class<?> paramClass)
  {
    boolean bool;
    if ((!Enum.class.isAssignableFrom(paramClass)) && ((paramClass.isAnonymousClass()) || (paramClass.isLocalClass()))) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  private boolean isInnerClass(Class<?> paramClass)
  {
    boolean bool;
    if ((paramClass.isMemberClass()) && (!isStatic(paramClass))) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  private boolean isStatic(Class<?> paramClass)
  {
    boolean bool;
    if ((paramClass.getModifiers() & 0x8) != 0) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  private boolean isValidSince(Since paramSince)
  {
    return (paramSince == null) || (paramSince.value() <= this.version);
  }
  
  private boolean isValidUntil(Until paramUntil)
  {
    return (paramUntil == null) || (paramUntil.value() > this.version);
  }
  
  private boolean isValidVersion(Since paramSince, Until paramUntil)
  {
    boolean bool;
    if ((isValidSince(paramSince)) && (isValidUntil(paramUntil))) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  protected Excluder clone()
  {
    try
    {
      Excluder localExcluder = (Excluder)super.clone();
      return localExcluder;
    }
    catch (CloneNotSupportedException localCloneNotSupportedException)
    {
      throw new AssertionError(localCloneNotSupportedException);
    }
  }
  
  public <T> TypeAdapter<T> create(final Gson paramGson, final TypeToken<T> paramTypeToken)
  {
    Class localClass = paramTypeToken.getRawType();
    final boolean bool1 = excludeClassChecks(localClass);
    final boolean bool2;
    if ((!bool1) && (!excludeClassInStrategy(localClass, true))) {
      bool2 = false;
    } else {
      bool2 = true;
    }
    if ((!bool1) && (!excludeClassInStrategy(localClass, false))) {
      bool1 = false;
    } else {
      bool1 = true;
    }
    if ((!bool2) && (!bool1)) {
      return null;
    }
    new TypeAdapter()
    {
      private TypeAdapter<T> delegate;
      
      private TypeAdapter<T> delegate()
      {
        TypeAdapter localTypeAdapter = this.delegate;
        if (localTypeAdapter == null)
        {
          localTypeAdapter = paramGson.getDelegateAdapter(Excluder.this, paramTypeToken);
          this.delegate = localTypeAdapter;
        }
        return localTypeAdapter;
      }
      
      public T read(JsonReader paramAnonymousJsonReader)
        throws IOException
      {
        if (bool1)
        {
          paramAnonymousJsonReader.skipValue();
          return null;
        }
        return delegate().read(paramAnonymousJsonReader);
      }
      
      public void write(JsonWriter paramAnonymousJsonWriter, T paramAnonymousT)
        throws IOException
      {
        if (bool2)
        {
          paramAnonymousJsonWriter.nullValue();
          return;
        }
        delegate().write(paramAnonymousJsonWriter, paramAnonymousT);
      }
    };
  }
  
  public Excluder disableInnerClassSerialization()
  {
    Excluder localExcluder = clone();
    localExcluder.serializeInnerClasses = false;
    return localExcluder;
  }
  
  public boolean excludeClass(Class<?> paramClass, boolean paramBoolean)
  {
    if ((!excludeClassChecks(paramClass)) && (!excludeClassInStrategy(paramClass, paramBoolean))) {
      paramBoolean = false;
    } else {
      paramBoolean = true;
    }
    return paramBoolean;
  }
  
  public boolean excludeField(Field paramField, boolean paramBoolean)
  {
    if ((this.modifiers & paramField.getModifiers()) != 0) {
      return true;
    }
    if ((this.version != -1.0D) && (!isValidVersion((Since)paramField.getAnnotation(Since.class), (Until)paramField.getAnnotation(Until.class)))) {
      return true;
    }
    if (paramField.isSynthetic()) {
      return true;
    }
    Object localObject;
    if (this.requireExpose)
    {
      localObject = (Expose)paramField.getAnnotation(Expose.class);
      if ((localObject == null) || (paramBoolean ? !((Expose)localObject).serialize() : !((Expose)localObject).deserialize())) {
        return true;
      }
    }
    if ((!this.serializeInnerClasses) && (isInnerClass(paramField.getType()))) {
      return true;
    }
    if (isAnonymousOrLocal(paramField.getType())) {
      return true;
    }
    if (paramBoolean) {
      localObject = this.serializationStrategies;
    } else {
      localObject = this.deserializationStrategies;
    }
    if (!((List)localObject).isEmpty())
    {
      paramField = new FieldAttributes(paramField);
      localObject = ((List)localObject).iterator();
      while (((Iterator)localObject).hasNext()) {
        if (((ExclusionStrategy)((Iterator)localObject).next()).shouldSkipField(paramField)) {
          return true;
        }
      }
    }
    return false;
  }
  
  public Excluder excludeFieldsWithoutExposeAnnotation()
  {
    Excluder localExcluder = clone();
    localExcluder.requireExpose = true;
    return localExcluder;
  }
  
  public Excluder withExclusionStrategy(ExclusionStrategy paramExclusionStrategy, boolean paramBoolean1, boolean paramBoolean2)
  {
    Excluder localExcluder = clone();
    ArrayList localArrayList;
    if (paramBoolean1)
    {
      localArrayList = new ArrayList(this.serializationStrategies);
      localExcluder.serializationStrategies = localArrayList;
      localArrayList.add(paramExclusionStrategy);
    }
    if (paramBoolean2)
    {
      localArrayList = new ArrayList(this.deserializationStrategies);
      localExcluder.deserializationStrategies = localArrayList;
      localArrayList.add(paramExclusionStrategy);
    }
    return localExcluder;
  }
  
  public Excluder withModifiers(int... paramVarArgs)
  {
    Excluder localExcluder = clone();
    int i = 0;
    localExcluder.modifiers = 0;
    int j = paramVarArgs.length;
    while (i < j)
    {
      localExcluder.modifiers = (paramVarArgs[i] | localExcluder.modifiers);
      i++;
    }
    return localExcluder;
  }
  
  public Excluder withVersion(double paramDouble)
  {
    Excluder localExcluder = clone();
    localExcluder.version = paramDouble;
    return localExcluder;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.gson.internal.Excluder
 * JD-Core Version:    0.7.0.1
 */