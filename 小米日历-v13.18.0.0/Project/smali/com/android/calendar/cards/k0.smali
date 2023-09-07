.class public Lcom/android/calendar/cards/k0;
.super Lcom/android/calendar/cards/b;
.source "EventPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/cards/b<",
        "Ljava/util/List<",
        "Lcom/android/calendar/common/event/schema/Event;",
        ">;>;"
    }
.end annotation


# instance fields
.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/calendar/common/event/schema/Event;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/calendar/cards/t;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/calendar/cards/b;-><init>(Lcom/android/calendar/cards/t;)V

    .line 2
    .line 3
    .line 4
    return-void
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

.method public static synthetic k(Ljava/util/Map;Lcom/android/calendar/common/event/schema/AnniversaryEvent;Lcom/android/calendar/common/event/schema/AnniversaryEvent;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/calendar/cards/k0;->s(Ljava/util/Map;Lcom/android/calendar/common/event/schema/AnniversaryEvent;Lcom/android/calendar/common/event/schema/AnniversaryEvent;)I

    move-result p0

    return p0
.end method

.method public static synthetic l(Ljava/util/Map;Lcom/android/calendar/common/event/schema/CountdownEvent;Lcom/android/calendar/common/event/schema/CountdownEvent;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/calendar/cards/k0;->t(Ljava/util/Map;Lcom/android/calendar/common/event/schema/CountdownEvent;Lcom/android/calendar/common/event/schema/CountdownEvent;)I

    move-result p0

    return p0
.end method

.method public static synthetic m(Ljava/util/Map;Lcom/android/calendar/common/event/schema/AnniversaryEvent;Lcom/android/calendar/common/event/schema/AnniversaryEvent;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/calendar/cards/k0;->r(Ljava/util/Map;Lcom/android/calendar/common/event/schema/AnniversaryEvent;Lcom/android/calendar/common/event/schema/AnniversaryEvent;)I

    move-result p0

    return p0
.end method

.method public static synthetic n(Ljava/util/Map;Lcom/android/calendar/common/event/schema/AnniversaryEvent;Lcom/android/calendar/common/event/schema/AnniversaryEvent;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/calendar/cards/k0;->q(Ljava/util/Map;Lcom/android/calendar/common/event/schema/AnniversaryEvent;Lcom/android/calendar/common/event/schema/AnniversaryEvent;)I

    move-result p0

    return p0
.end method

.method private static synthetic q(Ljava/util/Map;Lcom/android/calendar/common/event/schema/AnniversaryEvent;Lcom/android/calendar/common/event/schema/AnniversaryEvent;)I
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ljava/lang/Integer;

    .line 6
    .line 7
    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Ljava/lang/Integer;

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    const/4 p0, -0x1

    .line 16
    return p0

    .line 17
    :cond_0
    if-nez p0, :cond_1

    .line 18
    .line 19
    const/4 p0, 0x1

    .line 20
    return p0

    .line 21
    :cond_1
    invoke-virtual {p1, p0}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    return p0
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
.end method

.method private static synthetic r(Ljava/util/Map;Lcom/android/calendar/common/event/schema/AnniversaryEvent;Lcom/android/calendar/common/event/schema/AnniversaryEvent;)I
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ljava/lang/Integer;

    .line 6
    .line 7
    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Ljava/lang/Integer;

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    const/4 p0, -0x1

    .line 16
    return p0

    .line 17
    :cond_0
    if-nez p0, :cond_1

    .line 18
    .line 19
    const/4 p0, 0x1

    .line 20
    return p0

    .line 21
    :cond_1
    invoke-virtual {p1, p0}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    return p0
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
.end method

.method private static synthetic s(Ljava/util/Map;Lcom/android/calendar/common/event/schema/AnniversaryEvent;Lcom/android/calendar/common/event/schema/AnniversaryEvent;)I
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ljava/lang/Integer;

    .line 6
    .line 7
    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Ljava/lang/Integer;

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    const/4 p0, -0x1

    .line 16
    return p0

    .line 17
    :cond_0
    if-nez p0, :cond_1

    .line 18
    .line 19
    const/4 p0, 0x1

    .line 20
    return p0

    .line 21
    :cond_1
    invoke-virtual {p1, p0}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    return p0
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
.end method

.method private static synthetic t(Ljava/util/Map;Lcom/android/calendar/common/event/schema/CountdownEvent;Lcom/android/calendar/common/event/schema/CountdownEvent;)I
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ljava/lang/Integer;

    .line 6
    .line 7
    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Ljava/lang/Integer;

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    const/4 p0, -0x1

    .line 16
    return p0

    .line 17
    :cond_0
    if-nez p0, :cond_1

    .line 18
    .line 19
    const/4 p0, 0x1

    .line 20
    return p0

    .line 21
    :cond_1
    invoke-virtual {p1, p0}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    return p0
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
.end method

.method private u(Ljava/util/Calendar;Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Calendar;",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/calendar/common/event/schema/AnniversaryEvent;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/calendar/common/event/schema/CountdownEvent;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/calendar/common/event/schema/Event;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    move-object/from16 v3, p4

    .line 8
    .line 9
    new-instance v4, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    new-instance v5, Landroid/util/ArrayMap;

    .line 15
    .line 16
    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    .line 17
    .line 18
    .line 19
    new-instance v6, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    new-instance v7, Landroid/util/ArrayMap;

    .line 25
    .line 26
    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    .line 27
    .line 28
    .line 29
    new-instance v8, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    new-instance v9, Landroid/util/ArrayMap;

    .line 35
    .line 36
    invoke-direct {v9}, Landroid/util/ArrayMap;-><init>()V

    .line 37
    .line 38
    .line 39
    if-eqz v2, :cond_3

    .line 40
    .line 41
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 42
    .line 43
    .line 44
    move-result-object v10

    .line 45
    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    .line 47
    .line 48
    move-result v11

    .line 49
    if-eqz v11, :cond_3

    .line 50
    .line 51
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v11

    .line 55
    check-cast v11, Lcom/android/calendar/common/event/schema/AnniversaryEvent;

    .line 56
    .line 57
    invoke-virtual {v11, v0}, Lcom/android/calendar/common/event/schema/AnniversaryEvent;->calDays(Ljava/util/Calendar;)I

    .line 58
    .line 59
    .line 60
    move-result v12

    .line 61
    if-lez v12, :cond_0

    .line 62
    .line 63
    invoke-virtual {v11, v0}, Lcom/android/calendar/common/event/schema/AnniversaryEvent;->calAnniversary(Ljava/util/Calendar;)I

    .line 64
    .line 65
    .line 66
    move-result v13

    .line 67
    if-lez v13, :cond_1

    .line 68
    .line 69
    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    .line 74
    .line 75
    move-result-object v12

    .line 76
    invoke-interface {v7, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_1
    rem-int/lit8 v13, v12, 0x64

    .line 81
    .line 82
    if-nez v13, :cond_2

    .line 83
    .line 84
    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 88
    .line 89
    .line 90
    move-result-object v12

    .line 91
    invoke-interface {v9, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_2
    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_3
    new-instance v10, Lcom/android/calendar/cards/g0;

    .line 100
    .line 101
    invoke-direct {v10, v7}, Lcom/android/calendar/cards/g0;-><init>(Ljava/util/Map;)V

    .line 102
    .line 103
    .line 104
    invoke-static {v6, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 105
    .line 106
    .line 107
    new-instance v7, Lcom/android/calendar/cards/h0;

    .line 108
    .line 109
    invoke-direct {v7, v9}, Lcom/android/calendar/cards/h0;-><init>(Ljava/util/Map;)V

    .line 110
    .line 111
    .line 112
    invoke-static {v8, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 113
    .line 114
    .line 115
    new-instance v7, Lcom/android/calendar/cards/i0;

    .line 116
    .line 117
    invoke-direct {v7, v5}, Lcom/android/calendar/cards/i0;-><init>(Ljava/util/Map;)V

    .line 118
    .line 119
    .line 120
    invoke-static {v4, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 121
    .line 122
    .line 123
    new-instance v5, Ljava/util/ArrayList;

    .line 124
    .line 125
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 126
    .line 127
    .line 128
    new-instance v7, Landroid/util/ArrayMap;

    .line 129
    .line 130
    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    .line 131
    .line 132
    .line 133
    if-eqz v3, :cond_5

    .line 134
    .line 135
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 136
    .line 137
    .line 138
    move-result-object v9

    .line 139
    :cond_4
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 140
    .line 141
    .line 142
    move-result v10

    .line 143
    if-eqz v10, :cond_5

    .line 144
    .line 145
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v10

    .line 149
    check-cast v10, Lcom/android/calendar/common/event/schema/CountdownEvent;

    .line 150
    .line 151
    invoke-virtual {v10, v0}, Lcom/android/calendar/common/event/schema/CountdownEvent;->calDays(Ljava/util/Calendar;)I

    .line 152
    .line 153
    .line 154
    move-result v11

    .line 155
    if-ltz v11, :cond_4

    .line 156
    .line 157
    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 161
    .line 162
    .line 163
    move-result-object v11

    .line 164
    invoke-interface {v7, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    goto :goto_1

    .line 168
    :cond_5
    new-instance v9, Lcom/android/calendar/cards/j0;

    .line 169
    .line 170
    invoke-direct {v9, v7}, Lcom/android/calendar/cards/j0;-><init>(Ljava/util/Map;)V

    .line 171
    .line 172
    .line 173
    invoke-static {v5, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 174
    .line 175
    .line 176
    new-instance v7, Ljava/util/ArrayList;

    .line 177
    .line 178
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 179
    .line 180
    .line 181
    new-instance v9, Ljava/util/ArrayList;

    .line 182
    .line 183
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 184
    .line 185
    .line 186
    new-instance v10, Ljava/util/ArrayList;

    .line 187
    .line 188
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 189
    .line 190
    .line 191
    invoke-static/range {p2 .. p2}, Lcom/android/calendar/settings/j;->o(Landroid/content/Context;)Z

    .line 192
    .line 193
    .line 194
    move-result v11

    .line 195
    if-eqz p5, :cond_c

    .line 196
    .line 197
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 198
    .line 199
    .line 200
    move-result-object v13

    .line 201
    const/4 v14, 0x0

    .line 202
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 203
    .line 204
    .line 205
    move-result v15

    .line 206
    if-eqz v15, :cond_c

    .line 207
    .line 208
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v15

    .line 212
    check-cast v15, Lcom/android/calendar/common/event/schema/Event;

    .line 213
    .line 214
    invoke-virtual {v15}, Lcom/android/calendar/common/event/schema/Event;->getEventType()I

    .line 215
    .line 216
    .line 217
    move-result v12

    .line 218
    move-object/from16 p5, v13

    .line 219
    .line 220
    const/4 v13, 0x3

    .line 221
    if-eq v12, v13, :cond_8

    .line 222
    .line 223
    const/4 v13, 0x7

    .line 224
    if-eq v12, v13, :cond_9

    .line 225
    .line 226
    packed-switch v12, :pswitch_data_0

    .line 227
    .line 228
    .line 229
    if-nez v11, :cond_6

    .line 230
    .line 231
    invoke-virtual {v15}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 232
    .line 233
    .line 234
    move-result-object v12

    .line 235
    invoke-virtual {v12}, Lcom/android/calendar/common/event/schema/EventEx;->isRejectAgenda()Z

    .line 236
    .line 237
    .line 238
    move-result v12

    .line 239
    if-eqz v12, :cond_6

    .line 240
    .line 241
    move/from16 v16, v11

    .line 242
    .line 243
    goto :goto_4

    .line 244
    :cond_6
    invoke-virtual {v15}, Lcom/android/calendar/common/event/schema/Event;->getId()J

    .line 245
    .line 246
    .line 247
    move-result-wide v12

    .line 248
    move/from16 v16, v11

    .line 249
    .line 250
    const-string v11, "meeting_status"

    .line 251
    .line 252
    invoke-static {v1, v12, v13, v11}, Ls1/d;->h(Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v11

    .line 256
    invoke-virtual {v15}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 257
    .line 258
    .line 259
    move-result-object v12

    .line 260
    invoke-virtual {v12, v11}, Lcom/android/calendar/common/event/schema/EventEx;->setMeetingStatus(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v15}, Lcom/android/calendar/common/event/schema/Event;->isAllDay()Z

    .line 264
    .line 265
    .line 266
    move-result v11

    .line 267
    if-eqz v11, :cond_7

    .line 268
    .line 269
    invoke-interface {v7, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    .line 271
    .line 272
    goto :goto_4

    .line 273
    :cond_7
    invoke-interface {v9, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    .line 275
    .line 276
    goto :goto_4

    .line 277
    :pswitch_0
    move/from16 v16, v11

    .line 278
    .line 279
    invoke-interface {v7, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    .line 281
    .line 282
    goto :goto_4

    .line 283
    :cond_8
    :pswitch_1
    move/from16 v16, v11

    .line 284
    .line 285
    goto :goto_3

    .line 286
    :cond_9
    move/from16 v16, v11

    .line 287
    .line 288
    const/16 v11, 0x64

    .line 289
    .line 290
    if-gt v14, v11, :cond_b

    .line 291
    .line 292
    check-cast v15, Lcom/android/calendar/common/event/schema/BirthdayEvent;

    .line 293
    .line 294
    invoke-interface {v7, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    .line 296
    .line 297
    add-int/lit8 v14, v14, 0x1

    .line 298
    .line 299
    goto :goto_4

    .line 300
    :goto_3
    invoke-virtual {v15}, Lcom/android/calendar/common/event/schema/Event;->isAllDay()Z

    .line 301
    .line 302
    .line 303
    move-result v11

    .line 304
    if-eqz v11, :cond_a

    .line 305
    .line 306
    invoke-interface {v7, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    .line 308
    .line 309
    goto :goto_4

    .line 310
    :cond_a
    invoke-interface {v9, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 311
    .line 312
    .line 313
    :cond_b
    :goto_4
    move-object/from16 v13, p5

    .line 314
    .line 315
    move/from16 v11, v16

    .line 316
    .line 317
    goto :goto_2

    .line 318
    :cond_c
    invoke-static {v1, v10}, Lr1/a;->C(Landroid/content/Context;Ljava/util/List;)V

    .line 319
    .line 320
    .line 321
    invoke-static {v2, v0}, Lp1/b;->e(Ljava/util/List;Ljava/util/Calendar;)V

    .line 322
    .line 323
    .line 324
    invoke-static {v3, v0}, Lw1/b;->e(Ljava/util/List;Ljava/util/Calendar;)V

    .line 325
    .line 326
    .line 327
    new-instance v1, Ljava/util/ArrayList;

    .line 328
    .line 329
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 330
    .line 331
    .line 332
    invoke-interface {v1, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 333
    .line 334
    .line 335
    invoke-interface {v1, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 336
    .line 337
    .line 338
    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 339
    .line 340
    .line 341
    invoke-interface {v1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 342
    .line 343
    .line 344
    invoke-interface {v1, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 345
    .line 346
    .line 347
    invoke-interface {v1, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 348
    .line 349
    .line 350
    invoke-interface {v1, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 351
    .line 352
    .line 353
    invoke-virtual/range {p1 .. p1}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 354
    .line 355
    .line 356
    move-result-wide v2

    .line 357
    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->isToday(J)Z

    .line 358
    .line 359
    .line 360
    move-result v0

    .line 361
    if-eqz v0, :cond_d

    .line 362
    .line 363
    const/4 v0, 0x2

    .line 364
    new-array v0, v0, [Ljava/lang/String;

    .line 365
    .line 366
    const-string v2, "count"

    .line 367
    .line 368
    const/4 v3, 0x0

    .line 369
    aput-object v2, v0, v3

    .line 370
    .line 371
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 372
    .line 373
    .line 374
    move-result v2

    .line 375
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v2

    .line 379
    const/4 v3, 0x1

    .line 380
    aput-object v2, v0, v3

    .line 381
    .line 382
    const-string v2, "key_everyday_agenda_amount"

    .line 383
    .line 384
    invoke-static {v2, v0}, Lcom/miui/calendar/util/g0;->f(Ljava/lang/String;[Ljava/lang/String;)V

    .line 385
    .line 386
    .line 387
    :cond_d
    move-object/from16 v0, p0

    .line 388
    .line 389
    iput-object v1, v0, Lcom/android/calendar/cards/k0;->f:Ljava/util/List;

    .line 390
    .line 391
    return-void

    .line 392
    nop

    .line 393
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
.end method


# virtual methods
.method bridge synthetic b()Lcom/android/calendar/cards/m1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/calendar/cards/k0;->o()Lcom/android/calendar/cards/f0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
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

.method public c()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method bridge synthetic d()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/calendar/cards/k0;->p()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
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

.method e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/calendar/cards/k0;->f:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
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

.method public h()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/calendar/cards/b;->d:Ljava/util/Calendar;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/Calendar;

    .line 8
    .line 9
    invoke-static {}, Lcom/android/calendar/application/CalendarApplication;->e()Lcom/android/calendar/application/CalendarApplication;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-static {v2, v0}, Lcom/miui/calendar/util/e0;->v(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    invoke-static {v0}, Lcom/miui/calendar/util/e0;->i(Ljava/util/Calendar;)I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    const/4 v4, 0x3

    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    move v5, v4

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v5, 0x1

    .line 31
    :goto_0
    invoke-static {v1, v3, v5}, Ls1/e;->d(Landroid/content/Context;II)Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    if-eqz v2, :cond_3

    .line 36
    .line 37
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    if-eqz v5, :cond_3

    .line 46
    .line 47
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    check-cast v5, Lcom/android/calendar/common/event/schema/Event;

    .line 52
    .line 53
    invoke-virtual {v5}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 54
    .line 55
    .line 56
    move-result-object v7

    .line 57
    invoke-virtual {v7}, Lcom/android/calendar/common/event/schema/EventEx;->getStartJulianDay()I

    .line 58
    .line 59
    .line 60
    move-result v7

    .line 61
    if-gt v7, v3, :cond_2

    .line 62
    .line 63
    invoke-virtual {v5}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 64
    .line 65
    .line 66
    move-result-object v7

    .line 67
    invoke-virtual {v7}, Lcom/android/calendar/common/event/schema/EventEx;->getEndJulianDay()I

    .line 68
    .line 69
    .line 70
    move-result v7

    .line 71
    if-ge v7, v3, :cond_1

    .line 72
    .line 73
    :cond_2
    invoke-virtual {v5}, Lcom/android/calendar/common/event/schema/Event;->getEventType()I

    .line 74
    .line 75
    .line 76
    move-result v7

    .line 77
    if-eq v7, v4, :cond_1

    .line 78
    .line 79
    invoke-virtual {v5}, Lcom/android/calendar/common/event/schema/Event;->getEventType()I

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    const/16 v7, 0x10

    .line 84
    .line 85
    if-eq v5, v7, :cond_1

    .line 86
    .line 87
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_3
    invoke-static {v1}, Lcom/android/calendar/event/e0;->e(Landroid/content/Context;)Z

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    if-eqz v2, :cond_6

    .line 96
    .line 97
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 102
    .line 103
    .line 104
    move-result v3

    .line 105
    if-eqz v3, :cond_6

    .line 106
    .line 107
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    check-cast v3, Lcom/android/calendar/common/event/schema/Event;

    .line 112
    .line 113
    invoke-virtual {v3}, Lcom/android/calendar/common/event/schema/Event;->getEventType()I

    .line 114
    .line 115
    .line 116
    move-result v4

    .line 117
    const/16 v5, 0x8

    .line 118
    .line 119
    if-eq v4, v5, :cond_5

    .line 120
    .line 121
    invoke-virtual {v3}, Lcom/android/calendar/common/event/schema/Event;->getEventType()I

    .line 122
    .line 123
    .line 124
    move-result v3

    .line 125
    const/16 v4, 0x9

    .line 126
    .line 127
    if-ne v3, v4, :cond_4

    .line 128
    .line 129
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 130
    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_6
    invoke-static {v1, v6}, Ls1/e;->j(Landroid/content/Context;Ljava/util/List;)V

    .line 134
    .line 135
    .line 136
    invoke-static {v1}, Ls1/a;->h(Landroid/content/Context;)Ljava/util/List;

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    invoke-static {v1, v4}, Ls1/e;->j(Landroid/content/Context;Ljava/util/List;)V

    .line 141
    .line 142
    .line 143
    invoke-static {v1}, Ls1/c;->h(Landroid/content/Context;)Ljava/util/List;

    .line 144
    .line 145
    .line 146
    move-result-object v5

    .line 147
    invoke-static {v1, v5}, Ls1/e;->j(Landroid/content/Context;Ljava/util/List;)V

    .line 148
    .line 149
    .line 150
    invoke-static {}, Lcom/android/calendar/application/CalendarApplication;->e()Lcom/android/calendar/application/CalendarApplication;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    move-object v1, p0

    .line 155
    move-object v2, v0

    .line 156
    invoke-direct/range {v1 .. v6}, Lcom/android/calendar/cards/k0;->u(Ljava/util/Calendar;Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 157
    .line 158
    .line 159
    iget-object v1, p0, Lcom/android/calendar/cards/b;->d:Ljava/util/Calendar;

    .line 160
    .line 161
    invoke-static {v0, v1}, Lcom/miui/calendar/util/s0;->u(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    if-nez v0, :cond_7

    .line 166
    .line 167
    return-void

    .line 168
    :cond_7
    invoke-virtual {p0}, Lcom/android/calendar/cards/b;->g()V

    .line 169
    .line 170
    .line 171
    return-void
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
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
.end method

.method o()Lcom/android/calendar/cards/f0;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/calendar/cards/f0;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/calendar/cards/b;->d:Ljava/util/Calendar;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/android/calendar/cards/f0;-><init>(Ljava/util/Calendar;)V

    .line 6
    .line 7
    .line 8
    return-object v0
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

.method p()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/calendar/common/event/schema/Event;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/calendar/cards/k0;->f:Ljava/util/List;

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
