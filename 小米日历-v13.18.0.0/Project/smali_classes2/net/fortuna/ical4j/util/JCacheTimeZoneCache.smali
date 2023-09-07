.class public Lnet/fortuna/ical4j/util/JCacheTimeZoneCache;
.super Ljava/lang/Object;
.source "JCacheTimeZoneCache.java"

# interfaces
.implements Lnet/fortuna/ical4j/util/TimeZoneCache;


# instance fields
.field private final jcacheCache:Ljavax/cache/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/cache/Cache<",
            "Ljava/lang/String;",
            "Lnet/fortuna/ical4j/model/component/VTimeZone;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    const-class v0, Ljava/lang/String;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljavax/cache/Caching;->getCachingProvider()Ljavax/cache/spi/CachingProvider;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-interface {v1}, Ljavax/cache/spi/CachingProvider;->getCacheManager()Ljavax/cache/CacheManager;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const-string v2, "ical4j.timezones"

    .line 15
    .line 16
    const-class v3, Lnet/fortuna/ical4j/model/component/VTimeZone;

    .line 17
    .line 18
    invoke-interface {v1, v2, v0, v3}, Ljavax/cache/CacheManager;->getCache(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)Ljavax/cache/Cache;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    if-nez v2, :cond_1

    .line 23
    .line 24
    const-class v3, Lnet/fortuna/ical4j/util/JCacheTimeZoneCache;

    .line 25
    .line 26
    monitor-enter v3

    .line 27
    :try_start_0
    const-string v2, "ical4j.timezones"

    .line 28
    .line 29
    const-class v4, Lnet/fortuna/ical4j/model/component/VTimeZone;

    .line 30
    .line 31
    invoke-interface {v1, v2, v0, v4}, Ljavax/cache/CacheManager;->getCache(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)Ljavax/cache/Cache;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    if-nez v2, :cond_0

    .line 36
    .line 37
    new-instance v2, Ljavax/cache/configuration/MutableConfiguration;

    .line 38
    .line 39
    invoke-direct {v2}, Ljavax/cache/configuration/MutableConfiguration;-><init>()V

    .line 40
    .line 41
    .line 42
    const-class v4, Lnet/fortuna/ical4j/model/component/VTimeZone;

    .line 43
    .line 44
    invoke-virtual {v2, v0, v4}, Ljavax/cache/configuration/MutableConfiguration;->setTypes(Ljava/lang/Class;Ljava/lang/Class;)Ljavax/cache/configuration/MutableConfiguration;

    .line 45
    .line 46
    .line 47
    const-string v0, "ical4j.timezones"

    .line 48
    .line 49
    invoke-interface {v1, v0, v2}, Ljavax/cache/CacheManager;->createCache(Ljava/lang/String;Ljavax/cache/configuration/Configuration;)Ljavax/cache/Cache;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    move-object v2, v0

    .line 54
    :cond_0
    monitor-exit v3

    .line 55
    goto :goto_0

    .line 56
    :catchall_0
    move-exception v0

    .line 57
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    throw v0

    .line 59
    :cond_1
    :goto_0
    iput-object v2, p0, Lnet/fortuna/ical4j/util/JCacheTimeZoneCache;->jcacheCache:Ljavax/cache/Cache;

    .line 60
    .line 61
    return-void
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/fortuna/ical4j/util/JCacheTimeZoneCache;->jcacheCache:Ljavax/cache/Cache;

    .line 2
    .line 3
    invoke-interface {v0}, Ljavax/cache/Cache;->clear()V

    .line 4
    .line 5
    .line 6
    return-void
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
.end method

.method public containsId(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/fortuna/ical4j/util/JCacheTimeZoneCache;->jcacheCache:Ljavax/cache/Cache;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljavax/cache/Cache;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
.end method

.method public getTimezone(Ljava/lang/String;)Lnet/fortuna/ical4j/model/component/VTimeZone;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/fortuna/ical4j/util/JCacheTimeZoneCache;->jcacheCache:Ljavax/cache/Cache;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljavax/cache/Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lnet/fortuna/ical4j/model/component/VTimeZone;

    .line 8
    .line 9
    return-object p1
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
.end method

.method public putIfAbsent(Ljava/lang/String;Lnet/fortuna/ical4j/model/component/VTimeZone;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/fortuna/ical4j/util/JCacheTimeZoneCache;->jcacheCache:Ljavax/cache/Cache;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Ljavax/cache/Cache;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
.end method
