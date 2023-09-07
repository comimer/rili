package com.bumptech.glide;

public enum MemoryCategory
{
  private final float multiplier;
  
  static
  {
    MemoryCategory localMemoryCategory1 = new MemoryCategory("LOW", 0, 0.5F);
    LOW = localMemoryCategory1;
    MemoryCategory localMemoryCategory2 = new MemoryCategory("NORMAL", 1, 1.0F);
    NORMAL = localMemoryCategory2;
    MemoryCategory localMemoryCategory3 = new MemoryCategory("HIGH", 2, 1.5F);
    HIGH = localMemoryCategory3;
    $VALUES = new MemoryCategory[] { localMemoryCategory1, localMemoryCategory2, localMemoryCategory3 };
  }
  
  private MemoryCategory(float paramFloat)
  {
    this.multiplier = paramFloat;
  }
  
  public float getMultiplier()
  {
    return this.multiplier;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.bumptech.glide.MemoryCategory
 * JD-Core Version:    0.7.0.1
 */