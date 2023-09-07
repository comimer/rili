package com.xiaomi.ad.entity.util;

import com.google.gson.TypeAdapter;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import d6.d;
import java.util.Map;

class GsonUtils$IgnoreStringToObjectTranslateAdapter$1
  extends TypeAdapter
{
  GsonUtils$IgnoreStringToObjectTranslateAdapter$1(GsonUtils.IgnoreStringToObjectTranslateAdapter paramIgnoreStringToObjectTranslateAdapter, TypeAdapter paramTypeAdapter, TypeToken paramTypeToken) {}
  
  public Object read(JsonReader paramJsonReader)
  {
    Class localClass = this.val$tokenType.getRawType();
    String str;
    if (GsonUtils.access$000().containsKey(localClass))
    {
      str = GsonUtils.access$200(GsonUtils.IgnoreStringToObjectTranslateAdapter.access$100(this.this$0));
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("TAF: skip ");
      localStringBuilder.append(localClass);
      localStringBuilder.append(" which has customized DESERIALIZER");
      d.e(str, localStringBuilder.toString());
      return this.val$delegate.read(paramJsonReader);
    }
    if ((!String.class.isAssignableFrom(localClass)) && (!localClass.isEnum()))
    {
      if (paramJsonReader.peek() == JsonToken.STRING)
      {
        paramJsonReader.skipValue();
        str = GsonUtils.access$200(GsonUtils.IgnoreStringToObjectTranslateAdapter.access$100(this.this$0));
        paramJsonReader = new StringBuilder();
        paramJsonReader.append("TAF: skip string value for type : ");
        paramJsonReader.append(localClass);
        d.g(str, paramJsonReader.toString());
        return null;
      }
      return this.val$delegate.read(paramJsonReader);
    }
    return this.val$delegate.read(paramJsonReader);
  }
  
  public void write(JsonWriter paramJsonWriter, Object paramObject)
  {
    this.val$delegate.write(paramJsonWriter, paramObject);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.ad.entity.util.GsonUtils.IgnoreStringToObjectTranslateAdapter.1
 * JD-Core Version:    0.7.0.1
 */