.class Lorg/apache/commons/collections4/map/AbstractInputCheckedMapDecorator$EntrySet;
.super Lorg/apache/commons/collections4/set/AbstractSetDecorator;
.source "AbstractInputCheckedMapDecorator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/map/AbstractInputCheckedMapDecorator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/collections4/set/AbstractSetDecorator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x3c6f1d53e93c8f78L


# instance fields
.field private final parent:Lorg/apache/commons/collections4/map/AbstractInputCheckedMapDecorator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/map/AbstractInputCheckedMapDecorator<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/commons/collections4/map/AbstractInputCheckedMapDecorator;


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections4/map/AbstractInputCheckedMapDecorator;Ljava/util/Set;Lorg/apache/commons/collections4/map/AbstractInputCheckedMapDecorator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;",
            "Lorg/apache/commons/collections4/map/AbstractInputCheckedMapDecorator<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/apache/commons/collections4/map/AbstractInputCheckedMapDecorator$EntrySet;->this$0:Lorg/apache/commons/collections4/map/AbstractInputCheckedMapDecorator;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lorg/apache/commons/collections4/set/AbstractSetDecorator;-><init>(Ljava/util/Set;)V

    .line 4
    .line 5
    .line 6
    iput-object p3, p0, Lorg/apache/commons/collections4/map/AbstractInputCheckedMapDecorator$EntrySet;->parent:Lorg/apache/commons/collections4/map/AbstractInputCheckedMapDecorator;

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
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/commons/collections4/map/AbstractInputCheckedMapDecorator$a;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/apache/commons/collections4/map/AbstractInputCheckedMapDecorator$EntrySet;->this$0:Lorg/apache/commons/collections4/map/AbstractInputCheckedMapDecorator;

    .line 4
    .line 5
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/AbstractSetDecorator;->decorated()Ljava/util/Set;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iget-object v3, p0, Lorg/apache/commons/collections4/map/AbstractInputCheckedMapDecorator$EntrySet;->parent:Lorg/apache/commons/collections4/map/AbstractInputCheckedMapDecorator;

    .line 14
    .line 15
    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/collections4/map/AbstractInputCheckedMapDecorator$a;-><init>(Lorg/apache/commons/collections4/map/AbstractInputCheckedMapDecorator;Ljava/util/Iterator;Lorg/apache/commons/collections4/map/AbstractInputCheckedMapDecorator;)V

    .line 16
    .line 17
    .line 18
    return-object v0
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

.method public toArray()[Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/AbstractSetDecorator;->decorated()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 3
    new-instance v2, Lorg/apache/commons/collections4/map/AbstractInputCheckedMapDecorator$b;

    iget-object v3, p0, Lorg/apache/commons/collections4/map/AbstractInputCheckedMapDecorator$EntrySet;->this$0:Lorg/apache/commons/collections4/map/AbstractInputCheckedMapDecorator;

    aget-object v4, v0, v1

    check-cast v4, Ljava/util/Map$Entry;

    iget-object v5, p0, Lorg/apache/commons/collections4/map/AbstractInputCheckedMapDecorator$EntrySet;->parent:Lorg/apache/commons/collections4/map/AbstractInputCheckedMapDecorator;

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/commons/collections4/map/AbstractInputCheckedMapDecorator$b;-><init>(Lorg/apache/commons/collections4/map/AbstractInputCheckedMapDecorator;Ljava/util/Map$Entry;Lorg/apache/commons/collections4/map/AbstractInputCheckedMapDecorator;)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 4
    array-length v0, p1

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    goto :goto_0

    :cond_0
    move-object v0, p1

    .line 6
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/AbstractSetDecorator;->decorated()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move v2, v1

    .line 7
    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 8
    new-instance v3, Lorg/apache/commons/collections4/map/AbstractInputCheckedMapDecorator$b;

    iget-object v4, p0, Lorg/apache/commons/collections4/map/AbstractInputCheckedMapDecorator$EntrySet;->this$0:Lorg/apache/commons/collections4/map/AbstractInputCheckedMapDecorator;

    aget-object v5, v0, v2

    check-cast v5, Ljava/util/Map$Entry;

    iget-object v6, p0, Lorg/apache/commons/collections4/map/AbstractInputCheckedMapDecorator$EntrySet;->parent:Lorg/apache/commons/collections4/map/AbstractInputCheckedMapDecorator;

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/commons/collections4/map/AbstractInputCheckedMapDecorator$b;-><init>(Lorg/apache/commons/collections4/map/AbstractInputCheckedMapDecorator;Ljava/util/Map$Entry;Lorg/apache/commons/collections4/map/AbstractInputCheckedMapDecorator;)V

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 9
    :cond_1
    array-length v2, v0

    array-length v3, p1

    if-le v2, v3, :cond_2

    return-object v0

    .line 10
    :cond_2
    array-length v2, v0

    invoke-static {v0, v1, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    array-length v1, p1

    array-length v2, v0

    if-le v1, v2, :cond_3

    .line 12
    array-length v0, v0

    const/4 v1, 0x0

    aput-object v1, p1, v0

    :cond_3
    return-object p1
.end method
