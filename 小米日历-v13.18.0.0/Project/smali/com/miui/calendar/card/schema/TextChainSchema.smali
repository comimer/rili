.class public Lcom/miui/calendar/card/schema/TextChainSchema;
.super Ljava/lang/Object;
.source "TextChainSchema.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/calendar/card/schema/TextChainSchema$TextChainType;
    }
.end annotation


# static fields
.field private static final MAX_ACTION_SORT:I = 0xa


# instance fields
.field public action:Lcom/android/calendar/common/ModuleSchema;

.field public ad:Lcom/miui/calendar/ad/AdSchema;

.field public imgUrl:Ljava/lang/String;

.field public sort:I

.field public title:Ljava/lang/String;

.field public type:Lcom/miui/calendar/card/schema/TextChainSchema$TextChainType;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createTextChain(Lcom/android/calendar/common/ModuleSchema;)Lcom/miui/calendar/card/schema/TextChainSchema;
    .locals 2

    .line 7
    new-instance v0, Lcom/miui/calendar/card/schema/TextChainSchema;

    invoke-direct {v0}, Lcom/miui/calendar/card/schema/TextChainSchema;-><init>()V

    .line 8
    sget-object v1, Lcom/miui/calendar/card/schema/TextChainSchema$TextChainType;->NORMAL:Lcom/miui/calendar/card/schema/TextChainSchema$TextChainType;

    iput-object v1, v0, Lcom/miui/calendar/card/schema/TextChainSchema;->type:Lcom/miui/calendar/card/schema/TextChainSchema$TextChainType;

    .line 9
    iget-object v1, p0, Lcom/android/calendar/common/ModuleSchema;->actionIcon:Ljava/lang/String;

    invoke-static {v1}, Lcom/miui/calendar/util/l0;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/calendar/card/schema/TextChainSchema;->imgUrl:Ljava/lang/String;

    .line 10
    iget-object v1, p0, Lcom/android/calendar/common/ModuleSchema;->title:Ljava/lang/String;

    iput-object v1, v0, Lcom/miui/calendar/card/schema/TextChainSchema;->title:Ljava/lang/String;

    .line 11
    iget v1, p0, Lcom/android/calendar/common/ModuleSchema;->sort:I

    iput v1, v0, Lcom/miui/calendar/card/schema/TextChainSchema;->sort:I

    .line 12
    iput-object p0, v0, Lcom/miui/calendar/card/schema/TextChainSchema;->action:Lcom/android/calendar/common/ModuleSchema;

    return-object v0
.end method

.method public static createTextChain(Lcom/miui/calendar/ad/AdSchema;)Lcom/miui/calendar/card/schema/TextChainSchema;
    .locals 3

    .line 1
    new-instance v0, Lcom/miui/calendar/card/schema/TextChainSchema;

    invoke-direct {v0}, Lcom/miui/calendar/card/schema/TextChainSchema;-><init>()V

    .line 2
    sget-object v1, Lcom/miui/calendar/card/schema/TextChainSchema$TextChainType;->ADVERTISEMENT:Lcom/miui/calendar/card/schema/TextChainSchema$TextChainType;

    iput-object v1, v0, Lcom/miui/calendar/card/schema/TextChainSchema;->type:Lcom/miui/calendar/card/schema/TextChainSchema$TextChainType;

    .line 3
    iget-object v1, p0, Lcom/miui/calendar/ad/AdSchema;->imgUrls:Ljava/util/List;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 4
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/miui/calendar/card/schema/TextChainSchema;->imgUrl:Ljava/lang/String;

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/miui/calendar/ad/AdSchema;->title:Ljava/lang/String;

    iput-object v1, v0, Lcom/miui/calendar/card/schema/TextChainSchema;->title:Ljava/lang/String;

    .line 6
    iput-object p0, v0, Lcom/miui/calendar/card/schema/TextChainSchema;->ad:Lcom/miui/calendar/ad/AdSchema;

    return-object v0
.end method

.method public static createTextChainList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/calendar/common/ModuleSchema;",
            ">;",
            "Ljava/util/List<",
            "Lcom/miui/calendar/ad/AdSchema;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/miui/calendar/card/schema/TextChainSchema;",
            ">;"
        }
    .end annotation

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    :cond_0
    if-eqz p1, :cond_9

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    goto/16 :goto_3

    .line 18
    .line 19
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    if-eqz p0, :cond_7

    .line 26
    .line 27
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-nez v2, :cond_2

    .line 32
    .line 33
    goto :goto_2

    .line 34
    :cond_2
    new-instance v2, Ljava/util/HashSet;

    .line 35
    .line 36
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 37
    .line 38
    .line 39
    move v3, v1

    .line 40
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    if-ge v3, v4, :cond_3

    .line 45
    .line 46
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    check-cast v4, Lcom/android/calendar/common/ModuleSchema;

    .line 51
    .line 52
    invoke-static {v4}, Lcom/miui/calendar/card/schema/TextChainSchema;->createTextChain(Lcom/android/calendar/common/ModuleSchema;)Lcom/miui/calendar/card/schema/TextChainSchema;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    iget v4, v4, Lcom/miui/calendar/card/schema/TextChainSchema;->sort:I

    .line 60
    .line 61
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    add-int/lit8 v3, v3, 0x1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_3
    if-eqz p1, :cond_6

    .line 72
    .line 73
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 74
    .line 75
    .line 76
    move-result p0

    .line 77
    if-lez p0, :cond_6

    .line 78
    .line 79
    move p0, v1

    .line 80
    :cond_4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    if-nez v3, :cond_5

    .line 89
    .line 90
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    check-cast v3, Lcom/miui/calendar/ad/AdSchema;

    .line 95
    .line 96
    invoke-static {v3}, Lcom/miui/calendar/card/schema/TextChainSchema;->createTextChain(Lcom/miui/calendar/ad/AdSchema;)Lcom/miui/calendar/card/schema/TextChainSchema;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    iput v1, v3, Lcom/miui/calendar/card/schema/TextChainSchema;->sort:I

    .line 101
    .line 102
    invoke-interface {v0, v1, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    add-int/lit8 p0, p0, 0x1

    .line 106
    .line 107
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    if-lt p0, v3, :cond_5

    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 115
    .line 116
    const/16 v3, 0xa

    .line 117
    .line 118
    if-le v1, v3, :cond_4

    .line 119
    .line 120
    :cond_6
    :goto_1
    new-instance p0, Lcom/miui/calendar/card/schema/TextChainSchema$a;

    .line 121
    .line 122
    invoke-direct {p0}, Lcom/miui/calendar/card/schema/TextChainSchema$a;-><init>()V

    .line 123
    .line 124
    .line 125
    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 126
    .line 127
    .line 128
    return-object v0

    .line 129
    :cond_7
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 130
    .line 131
    .line 132
    move-result p0

    .line 133
    if-ge v1, p0, :cond_8

    .line 134
    .line 135
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    check-cast p0, Lcom/miui/calendar/ad/AdSchema;

    .line 140
    .line 141
    invoke-static {p0}, Lcom/miui/calendar/card/schema/TextChainSchema;->createTextChain(Lcom/miui/calendar/ad/AdSchema;)Lcom/miui/calendar/card/schema/TextChainSchema;

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    add-int/lit8 v1, v1, 0x1

    .line 149
    .line 150
    goto :goto_2

    .line 151
    :cond_8
    return-object v0

    .line 152
    :cond_9
    :goto_3
    const/4 p0, 0x0

    .line 153
    return-object p0
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


# virtual methods
.method public onClick(Landroid/content/Context;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/card/schema/TextChainSchema;->type:Lcom/miui/calendar/card/schema/TextChainSchema$TextChainType;

    .line 2
    .line 3
    sget-object v1, Lcom/miui/calendar/card/schema/TextChainSchema$TextChainType;->NORMAL:Lcom/miui/calendar/card/schema/TextChainSchema$TextChainType;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Lcom/miui/calendar/card/schema/TextChainSchema;->action:Lcom/android/calendar/common/ModuleSchema;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v1, p1}, Lcom/android/calendar/common/ModuleSchema;->sendIntent(Landroid/content/Context;)Z

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    sget-object v1, Lcom/miui/calendar/card/schema/TextChainSchema$TextChainType;->ADVERTISEMENT:Lcom/miui/calendar/card/schema/TextChainSchema$TextChainType;

    .line 16
    .line 17
    if-ne v0, v1, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lcom/miui/calendar/card/schema/TextChainSchema;->ad:Lcom/miui/calendar/ad/AdSchema;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-static {p1, v0}, Lcom/miui/calendar/ad/AdSchema;->onJumpAdItemClicked(Landroid/content/Context;Lcom/miui/calendar/ad/AdSchema;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    :goto_0
    return-void
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
.end method

.method public onDisplay(Landroid/content/Context;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/card/schema/TextChainSchema;->type:Lcom/miui/calendar/card/schema/TextChainSchema$TextChainType;

    .line 2
    .line 3
    sget-object v1, Lcom/miui/calendar/card/schema/TextChainSchema$TextChainType;->ADVERTISEMENT:Lcom/miui/calendar/card/schema/TextChainSchema$TextChainType;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/miui/calendar/card/schema/TextChainSchema;->ad:Lcom/miui/calendar/ad/AdSchema;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {p1, v0}, Lcom/miui/calendar/ad/AdSchema;->onAdItemDisplayed(Landroid/content/Context;Lcom/miui/calendar/ad/AdSchema;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method
