.class public final Lat/bitfire/ical4android/UnknownProperty;
.super Ljava/lang/Object;
.source "UnknownProperty.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0013\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u0004J\u000e\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u0011R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0086T\u00a2\u0006\u0002\n\u0000Rs\u0010\u0007\u001ad\u0012,\u0012*\u0012\u000e\u0008\u0001\u0012\n \u000b*\u0004\u0018\u00010\n0\n \u000b*\u0014\u0012\u000e\u0008\u0001\u0012\n \u000b*\u0004\u0018\u00010\n0\n\u0018\u00010\t0\t \u000b*0\u0012,\u0012*\u0012\u000e\u0008\u0001\u0012\n \u000b*\u0004\u0018\u00010\n0\n \u000b*\u0014\u0012\u000e\u0008\u0001\u0012\n \u000b*\u0004\u0018\u00010\n0\n\u0018\u00010\t0\t0\u000c0\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eRs\u0010\u000f\u001ad\u0012,\u0012*\u0012\u000e\u0008\u0001\u0012\n \u000b*\u0004\u0018\u00010\u00110\u0011 \u000b*\u0014\u0012\u000e\u0008\u0001\u0012\n \u000b*\u0004\u0018\u00010\u00110\u0011\u0018\u00010\u00100\u0010 \u000b*0\u0012,\u0012*\u0012\u000e\u0008\u0001\u0012\n \u000b*\u0004\u0018\u00010\u00110\u0011 \u000b*\u0014\u0012\u000e\u0008\u0001\u0012\n \u000b*\u0004\u0018\u00010\u00110\u0011\u0018\u00010\u00100\u00100\u000c0\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u000e\u00a8\u0006\u0017"
    }
    d2 = {
        "Lat/bitfire/ical4android/UnknownProperty;",
        "",
        "()V",
        "CONTENT_ITEM_TYPE",
        "",
        "MAX_UNKNOWN_PROPERTY_SIZE",
        "",
        "parameterFactorySupplier",
        "",
        "Lnet/fortuna/ical4j/model/ParameterFactory;",
        "Lnet/fortuna/ical4j/model/Parameter;",
        "kotlin.jvm.PlatformType",
        "",
        "getParameterFactorySupplier",
        "()Ljava/util/List;",
        "propertyFactorySupplier",
        "Lnet/fortuna/ical4j/model/PropertyFactory;",
        "Lnet/fortuna/ical4j/model/Property;",
        "getPropertyFactorySupplier",
        "fromJsonString",
        "jsonString",
        "toJsonString",
        "prop",
        "ical4android_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.ical4android.unknown-property"

.field public static final INSTANCE:Lat/bitfire/ical4android/UnknownProperty;

.field public static final MAX_UNKNOWN_PROPERTY_SIZE:I = 0x61a8

.field private static final parameterFactorySupplier:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/fortuna/ical4j/model/ParameterFactory<",
            "+",
            "Lnet/fortuna/ical4j/model/Parameter;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final propertyFactorySupplier:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/fortuna/ical4j/model/PropertyFactory<",
            "+",
            "Lnet/fortuna/ical4j/model/Property;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lat/bitfire/ical4android/UnknownProperty;

    .line 2
    .line 3
    invoke-direct {v0}, Lat/bitfire/ical4android/UnknownProperty;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lat/bitfire/ical4android/UnknownProperty;->INSTANCE:Lat/bitfire/ical4android/UnknownProperty;

    .line 7
    .line 8
    new-instance v0, Lnet/fortuna/ical4j/data/DefaultPropertyFactorySupplier;

    .line 9
    .line 10
    invoke-direct {v0}, Lnet/fortuna/ical4j/data/DefaultPropertyFactorySupplier;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lnet/fortuna/ical4j/data/DefaultPropertyFactorySupplier;->get()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lat/bitfire/ical4android/UnknownProperty;->propertyFactorySupplier:Ljava/util/List;

    .line 21
    .line 22
    new-instance v0, Lnet/fortuna/ical4j/data/DefaultParameterFactorySupplier;

    .line 23
    .line 24
    invoke-direct {v0}, Lnet/fortuna/ical4j/data/DefaultParameterFactorySupplier;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lnet/fortuna/ical4j/data/DefaultParameterFactorySupplier;->get()Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    sput-object v0, Lat/bitfire/ical4android/UnknownProperty;->parameterFactorySupplier:Ljava/util/List;

    .line 35
    .line 36
    return-void
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
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromJsonString(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;
    .locals 5

    .line 1
    const-string v0, "jsonString"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lorg/json/JSONArray;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    new-instance v2, Lnet/fortuna/ical4j/model/PropertyBuilder;

    .line 22
    .line 23
    invoke-direct {v2}, Lnet/fortuna/ical4j/model/PropertyBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    sget-object v3, Lat/bitfire/ical4android/UnknownProperty;->propertyFactorySupplier:Ljava/util/List;

    .line 27
    .line 28
    invoke-virtual {v2, v3}, Lnet/fortuna/ical4j/model/PropertyBuilder;->factories(Ljava/util/List;)Lnet/fortuna/ical4j/model/PropertyBuilder;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v2, p1}, Lnet/fortuna/ical4j/model/PropertyBuilder;->name(Ljava/lang/String;)Lnet/fortuna/ical4j/model/PropertyBuilder;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1, v1}, Lnet/fortuna/ical4j/model/PropertyBuilder;->value(Ljava/lang/String;)Lnet/fortuna/ical4j/model/PropertyBuilder;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const/4 v1, 0x2

    .line 41
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    if-eqz v0, :cond_0

    .line 46
    .line 47
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    const-string v2, "jsonParams.keys()"

    .line 52
    .line 53
    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-eqz v2, :cond_0

    .line 61
    .line 62
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    check-cast v2, Ljava/lang/String;

    .line 67
    .line 68
    new-instance v3, Lnet/fortuna/ical4j/model/ParameterBuilder;

    .line 69
    .line 70
    invoke-direct {v3}, Lnet/fortuna/ical4j/model/ParameterBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    sget-object v4, Lat/bitfire/ical4android/UnknownProperty;->parameterFactorySupplier:Ljava/util/List;

    .line 74
    .line 75
    invoke-virtual {v3, v4}, Lnet/fortuna/ical4j/model/ParameterBuilder;->factories(Ljava/util/List;)Lnet/fortuna/ical4j/model/ParameterBuilder;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-virtual {v3, v2}, Lnet/fortuna/ical4j/model/ParameterBuilder;->name(Ljava/lang/String;)Lnet/fortuna/ical4j/model/ParameterBuilder;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-virtual {v3, v2}, Lnet/fortuna/ical4j/model/ParameterBuilder;->value(Ljava/lang/String;)Lnet/fortuna/ical4j/model/ParameterBuilder;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/ParameterBuilder;->build()Lnet/fortuna/ical4j/model/Parameter;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-virtual {p1, v2}, Lnet/fortuna/ical4j/model/PropertyBuilder;->parameter(Lnet/fortuna/ical4j/model/Parameter;)Lnet/fortuna/ical4j/model/PropertyBuilder;

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_0
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/PropertyBuilder;->build()Lnet/fortuna/ical4j/model/Property;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    const-string v0, "builder.build()"

    .line 104
    .line 105
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    return-object p1
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
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
.end method

.method public final getParameterFactorySupplier()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/fortuna/ical4j/model/ParameterFactory<",
            "+",
            "Lnet/fortuna/ical4j/model/Parameter;",
            ">;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lat/bitfire/ical4android/UnknownProperty;->parameterFactorySupplier:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
    .line 4
    .line 5
    .line 6
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
.end method

.method public final getPropertyFactorySupplier()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/fortuna/ical4j/model/PropertyFactory<",
            "+",
            "Lnet/fortuna/ical4j/model/Property;",
            ">;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lat/bitfire/ical4android/UnknownProperty;->propertyFactorySupplier:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
    .line 4
    .line 5
    .line 6
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
.end method

.method public final toJsonString(Lnet/fortuna/ical4j/model/Property;)Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, "prop"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lorg/json/JSONArray;

    .line 7
    .line 8
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Property;->getName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Content;->getValue()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Property;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/ParameterList;->isEmpty()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-nez v1, :cond_1

    .line 34
    .line 35
    new-instance v1, Lorg/json/JSONObject;

    .line 36
    .line 37
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Property;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/ParameterList;->iterator()Ljava/util/Iterator;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_0

    .line 53
    .line 54
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    check-cast v2, Lnet/fortuna/ical4j/model/Parameter;

    .line 59
    .line 60
    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/Parameter;->getName()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/Content;->getValue()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 73
    .line 74
    .line 75
    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    const-string v0, "json.toString()"

    .line 80
    .line 81
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    return-object p1
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
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
.end method
