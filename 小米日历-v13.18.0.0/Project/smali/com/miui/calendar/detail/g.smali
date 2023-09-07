.class public Lcom/miui/calendar/detail/g;
.super Lcom/miui/calendar/card/b;
.source "CardDetailCardFactory.java"


# instance fields
.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ls3/a;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/miui/calendar/card/schema/CustomCardSchema;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/BaseAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/calendar/card/b;-><init>(Landroid/content/Context;Landroid/widget/BaseAdapter;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/miui/calendar/detail/g;->h:Ljava/util/Map;

    .line 10
    .line 11
    return-void
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
.end method


# virtual methods
.method protected h(Lcom/miui/calendar/util/r0;)V
    .locals 9

    .line 1
    new-instance p1, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/miui/calendar/detail/g;->i:Lcom/miui/calendar/card/schema/CustomCardSchema;

    .line 7
    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iget-object v0, v0, Lcom/miui/calendar/card/schema/CustomCardSchema;->extra:Lcom/google/gson/JsonObject;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    :try_start_0
    const-string v2, "desc"

    .line 16
    .line 17
    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    goto :goto_0

    .line 26
    :catch_0
    const-string v0, "Cal:D:CardDetailCardFactory"

    .line 27
    .line 28
    const-string v2, "parse description error"

    .line 29
    .line 30
    invoke-static {v0, v2}, Lcom/miui/calendar/util/z;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    :goto_0
    new-instance v0, Lcom/miui/calendar/card/schema/LocalCardSchema;

    .line 34
    .line 35
    invoke-direct {v0}, Lcom/miui/calendar/card/schema/LocalCardSchema;-><init>()V

    .line 36
    .line 37
    .line 38
    const/16 v2, 0xc

    .line 39
    .line 40
    iput v2, v0, Lcom/miui/calendar/card/schema/LocalCardSchema;->showType:I

    .line 41
    .line 42
    iget-object v2, p0, Lcom/miui/calendar/detail/g;->i:Lcom/miui/calendar/card/schema/CustomCardSchema;

    .line 43
    .line 44
    iget-object v3, v2, Lcom/miui/calendar/card/schema/CustomCardSchema;->icon:Ljava/lang/String;

    .line 45
    .line 46
    iput-object v3, v0, Lcom/miui/calendar/card/schema/LocalCardSchema;->icon:Ljava/lang/String;

    .line 47
    .line 48
    iget-object v2, v2, Lcom/miui/calendar/card/schema/CustomCardSchema;->title:Ljava/lang/String;

    .line 49
    .line 50
    iput-object v2, v0, Lcom/miui/calendar/card/schema/LocalCardSchema;->title:Ljava/lang/String;

    .line 51
    .line 52
    iput-object v1, v0, Lcom/miui/calendar/card/schema/LocalCardSchema;->description:Ljava/lang/String;

    .line 53
    .line 54
    new-instance v1, Lcom/google/gson/JsonObject;

    .line 55
    .line 56
    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 57
    .line 58
    .line 59
    iput-object v1, v0, Lcom/miui/calendar/card/schema/LocalCardSchema;->extra:Lcom/google/gson/JsonObject;

    .line 60
    .line 61
    iget-object v2, p0, Lcom/miui/calendar/card/b;->a:Landroid/content/Context;

    .line 62
    .line 63
    sget-object v1, Lcom/miui/calendar/card/Card$ContainerType;->CARD_DETAIL:Lcom/miui/calendar/card/Card$ContainerType;

    .line 64
    .line 65
    iget-object v4, p0, Lcom/miui/calendar/card/b;->c:Ljava/util/Calendar;

    .line 66
    .line 67
    iget-object v5, p0, Lcom/miui/calendar/card/b;->b:Landroid/widget/BaseAdapter;

    .line 68
    .line 69
    iget v6, v0, Lcom/miui/calendar/card/schema/LocalCardSchema;->showType:I

    .line 70
    .line 71
    iget-object v7, p0, Lcom/miui/calendar/detail/g;->h:Ljava/util/Map;

    .line 72
    .line 73
    move-object v3, v1

    .line 74
    invoke-static/range {v2 .. v7}, Lr3/b;->i(Landroid/content/Context;Lcom/miui/calendar/card/Card$ContainerType;Ljava/util/Calendar;Landroid/widget/BaseAdapter;ILjava/util/Map;)Ls3/a;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    if-eqz v2, :cond_1

    .line 79
    .line 80
    instance-of v3, v2, Lcom/miui/calendar/card/single/local/LocalSingleCard;

    .line 81
    .line 82
    if-eqz v3, :cond_1

    .line 83
    .line 84
    check-cast v2, Lcom/miui/calendar/card/single/local/LocalSingleCard;

    .line 85
    .line 86
    invoke-virtual {v2, v0}, Lcom/miui/calendar/card/single/local/LocalSingleCard;->o(Lcom/miui/calendar/card/schema/LocalCardSchema;)V

    .line 87
    .line 88
    .line 89
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    :cond_1
    iget-object v3, p0, Lcom/miui/calendar/card/b;->a:Landroid/content/Context;

    .line 93
    .line 94
    iget-object v5, p0, Lcom/miui/calendar/card/b;->c:Ljava/util/Calendar;

    .line 95
    .line 96
    iget-object v6, p0, Lcom/miui/calendar/card/b;->b:Landroid/widget/BaseAdapter;

    .line 97
    .line 98
    iget-object v7, p0, Lcom/miui/calendar/detail/g;->i:Lcom/miui/calendar/card/schema/CustomCardSchema;

    .line 99
    .line 100
    iget-object v8, p0, Lcom/miui/calendar/detail/g;->h:Ljava/util/Map;

    .line 101
    .line 102
    move-object v4, v1

    .line 103
    invoke-static/range {v3 .. v8}, Lr3/a;->j(Landroid/content/Context;Lcom/miui/calendar/card/Card$ContainerType;Ljava/util/Calendar;Landroid/widget/BaseAdapter;Lcom/miui/calendar/card/schema/CustomCardSchema;Ljava/util/Map;)Ls3/a;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    if-eqz v0, :cond_2

    .line 108
    .line 109
    instance-of v1, v0, Lcom/miui/calendar/card/single/custom/CustomSingleCard;

    .line 110
    .line 111
    if-eqz v1, :cond_2

    .line 112
    .line 113
    check-cast v0, Lcom/miui/calendar/card/single/custom/CustomSingleCard;

    .line 114
    .line 115
    iget-object v1, p0, Lcom/miui/calendar/detail/g;->i:Lcom/miui/calendar/card/schema/CustomCardSchema;

    .line 116
    .line 117
    invoke-virtual {v0, v1}, Lcom/miui/calendar/card/single/custom/CustomSingleCard;->x(Lcom/miui/calendar/card/schema/CustomCardSchema;)V

    .line 118
    .line 119
    .line 120
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    :cond_2
    iput-object p1, p0, Lcom/miui/calendar/card/b;->d:Ljava/util/List;

    .line 124
    .line 125
    return-void
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

.method public i(Lcom/miui/calendar/card/schema/CustomCardSchema;Lcom/miui/calendar/card/b$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/calendar/detail/g;->i:Lcom/miui/calendar/card/schema/CustomCardSchema;

    .line 2
    .line 3
    new-instance p1, Lcom/miui/calendar/util/r0;

    .line 4
    .line 5
    invoke-direct {p1}, Lcom/miui/calendar/util/r0;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/miui/calendar/card/b;->f(Lcom/miui/calendar/util/r0;Lcom/miui/calendar/card/b$b;)V

    .line 9
    .line 10
    .line 11
    return-void
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
.end method
