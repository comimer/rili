.class public Lcom/miui/systemAdSolution/common/EnumPracle;
.super Ljava/lang/Object;
.source "EnumPracle.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Enum;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/miui/systemAdSolution/common/EnumPracle;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "AdTrackType"


# instance fields
.field private mValue:Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/miui/systemAdSolution/common/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/miui/systemAdSolution/common/b;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/miui/systemAdSolution/common/EnumPracle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
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

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 12

    .line 1
    const-class v0, Ljava/lang/Enum;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v1

    move-object v3, v2

    move-object v4, v3

    :goto_0
    if-eq p1, v1, :cond_a

    .line 5
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 6
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_4

    .line 7
    :cond_1
    :try_start_0
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v5, "getSharedConstants"

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Class;

    .line 8
    const-class v8, Ljava/lang/Class;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-virtual {v0, v5, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    new-array v7, v6, [Ljava/lang/Object;

    aput-object v1, v7, v9

    .line 9
    invoke-virtual {v5, v2, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Enum;

    if-eqz v1, :cond_9

    .line 10
    array-length v2, v1

    if-lez v2, :cond_9

    .line 11
    array-length v2, v1

    move v5, v9

    :goto_1
    const/4 v7, 0x2

    if-ge v5, v2, :cond_8

    aget-object v8, v1, v5

    if-nez v8, :cond_2

    goto :goto_2

    :cond_2
    const-string v10, "name"

    .line 12
    invoke-virtual {v0, v10}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    if-nez v10, :cond_3

    goto :goto_2

    .line 13
    :cond_3
    invoke-virtual {v10}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v11

    if-nez v11, :cond_4

    .line 14
    invoke-virtual {v10, v6}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 15
    :cond_4
    invoke-virtual {v10, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 16
    invoke-static {v10, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_7

    const-string v1, "ordinal"

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v1

    if-nez v1, :cond_5

    .line 19
    invoke-virtual {v0, v6}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 20
    :cond_5
    invoke-virtual {v0, v8}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    if-ne v0, p1, :cond_6

    .line 21
    iput-object v8, p0, Lcom/miui/systemAdSolution/common/EnumPracle;->mValue:Ljava/lang/Enum;

    return-void

    :cond_6
    const-string v1, "the value[%s] which name is [%s] in the enum[%s] is not equal the value defined[%s]."

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    .line 22
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v9

    aput-object v4, v2, v6

    aput-object v3, v2, v7

    const/4 v5, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 23
    new-instance v1, Lcom/miui/systemAdSolution/common/UnsupportEnumException;

    invoke-direct {v1, v0}, Lcom/miui/systemAdSolution/common/UnsupportEnumException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_8
    const-string v0, "the name[%s] in the enum[%s] is not defined."

    new-array v1, v7, [Ljava/lang/Object;

    aput-object v4, v1, v9

    aput-object v3, v1, v6

    .line 24
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 25
    new-instance v1, Lcom/miui/systemAdSolution/common/UnsupportEnumException;

    invoke-direct {v1, v0}, Lcom/miui/systemAdSolution/common/UnsupportEnumException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    const-string v0, "the enum[%s] is not define."

    new-array v1, v6, [Ljava/lang/Object;

    aput-object v3, v1, v9

    .line 26
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 27
    new-instance v1, Lcom/miui/systemAdSolution/common/UnsupportEnumException;

    invoke-direct {v1, v0}, Lcom/miui/systemAdSolution/common/UnsupportEnumException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 28
    invoke-direct {p0, v3, v4, p1, v0}, Lcom/miui/systemAdSolution/common/EnumPracle;->noSupportLog(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Throwable;)V

    goto :goto_3

    :catch_1
    move-exception v0

    .line 29
    invoke-direct {p0, v3, v4, p1, v0}, Lcom/miui/systemAdSolution/common/EnumPracle;->noSupportLog(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Throwable;)V

    goto :goto_3

    :catch_2
    move-exception v0

    .line 30
    invoke-direct {p0, v3, v4, p1, v0}, Lcom/miui/systemAdSolution/common/EnumPracle;->noSupportLog(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Throwable;)V

    goto :goto_3

    :catch_3
    move-exception v0

    .line 31
    invoke-direct {p0, v3, v4, p1, v0}, Lcom/miui/systemAdSolution/common/EnumPracle;->noSupportLog(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Throwable;)V

    goto :goto_3

    :catch_4
    move-exception v0

    .line 32
    invoke-direct {p0, v3, v4, p1, v0}, Lcom/miui/systemAdSolution/common/EnumPracle;->noSupportLog(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Throwable;)V

    goto :goto_3

    :catch_5
    move-exception v0

    .line 33
    invoke-direct {p0, v3, v4, p1, v0}, Lcom/miui/systemAdSolution/common/EnumPracle;->noSupportLog(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Throwable;)V

    goto :goto_3

    :catch_6
    move-exception v0

    .line 34
    invoke-direct {p0, v3, v4, p1, v0}, Lcom/miui/systemAdSolution/common/EnumPracle;->noSupportLog(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Throwable;)V

    :goto_3
    return-void

    .line 35
    :cond_a
    :goto_4
    invoke-direct {p0, v3, v4, p1, v2}, Lcom/miui/systemAdSolution/common/EnumPracle;->noSupportLog(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Enum;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 37
    iput-object p1, p0, Lcom/miui/systemAdSolution/common/EnumPracle;->mValue:Ljava/lang/Enum;

    return-void

    .line 38
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "type must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private noSupportLog(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Throwable;)V
    .locals 2

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object p3

    .line 8
    const/4 v1, 0x0

    .line 9
    aput-object p3, v0, v1

    .line 10
    .line 11
    const/4 p3, 0x1

    .line 12
    aput-object p2, v0, p3

    .line 13
    .line 14
    const/4 p2, 0x2

    .line 15
    aput-object p1, v0, p2

    .line 16
    .line 17
    const-string p1, "the value[%s] which name is [%s] in the enum[%s] is not support."

    .line 18
    .line 19
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const-string p2, "AdTrackType"

    .line 24
    .line 25
    if-nez p4, :cond_0

    .line 26
    .line 27
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-static {p2, p1, p4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 32
    .line 33
    .line 34
    :goto_0
    return-void
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
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getValue()Ljava/lang/Enum;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/miui/systemAdSolution/common/EnumPracle;->mValue:Ljava/lang/Enum;

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

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/miui/systemAdSolution/common/EnumPracle;->mValue:Ljava/lang/Enum;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object p2, p0, Lcom/miui/systemAdSolution/common/EnumPracle;->mValue:Ljava/lang/Enum;

    .line 15
    .line 16
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object p2, p0, Lcom/miui/systemAdSolution/common/EnumPracle;->mValue:Ljava/lang/Enum;

    .line 24
    .line 25
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 30
    .line 31
    .line 32
    return-void
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
.end method
