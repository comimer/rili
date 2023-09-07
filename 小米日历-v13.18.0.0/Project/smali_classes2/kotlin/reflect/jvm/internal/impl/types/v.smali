.class public final Lkotlin/reflect/jvm/internal/impl/types/v;
.super Ljava/lang/Object;
.source "expandedTypeUtils.kt"


# direct methods
.method public static final a(Lkotlin/reflect/jvm/internal/impl/types/e1;Lv8/g;)Lv8/g;
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "inlineClassType"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Ljava/util/HashSet;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-static {p0, p1, v0}, Lkotlin/reflect/jvm/internal/impl/types/v;->b(Lkotlin/reflect/jvm/internal/impl/types/e1;Lv8/g;Ljava/util/HashSet;)Lv8/g;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
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

.method private static final b(Lkotlin/reflect/jvm/internal/impl/types/e1;Lv8/g;Ljava/util/HashSet;)Lv8/g;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/types/e1;",
            "Lv8/g;",
            "Ljava/util/HashSet<",
            "Lv8/l;",
            ">;)",
            "Lv8/g;"
        }
    .end annotation

    .line 1
    invoke-interface {p0, p1}, Lv8/n;->C0(Lv8/g;)Lv8/l;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    return-object v2

    .line 13
    :cond_0
    invoke-interface {p0, v0}, Lv8/n;->r0(Lv8/l;)Lv8/m;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-eqz v1, :cond_6

    .line 18
    .line 19
    invoke-interface {p0, v1}, Lkotlin/reflect/jvm/internal/impl/types/e1;->m(Lv8/m;)Lv8/g;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {p0, v0, p2}, Lkotlin/reflect/jvm/internal/impl/types/v;->b(Lkotlin/reflect/jvm/internal/impl/types/e1;Lv8/g;Ljava/util/HashSet;)Lv8/g;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    if-eqz p2, :cond_5

    .line 28
    .line 29
    invoke-interface {p0, v0}, Lv8/n;->C0(Lv8/g;)Lv8/l;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-interface {p0, v1}, Lkotlin/reflect/jvm/internal/impl/types/e1;->h(Lv8/l;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-nez v1, :cond_2

    .line 38
    .line 39
    instance-of v1, v0, Lv8/i;

    .line 40
    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    move-object v1, v0

    .line 44
    check-cast v1, Lv8/i;

    .line 45
    .line 46
    invoke-interface {p0, v1}, Lv8/n;->j0(Lv8/i;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    const/4 v1, 0x0

    .line 54
    goto :goto_1

    .line 55
    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 56
    :goto_1
    instance-of v2, p2, Lv8/i;

    .line 57
    .line 58
    if-eqz v2, :cond_3

    .line 59
    .line 60
    move-object v2, p2

    .line 61
    check-cast v2, Lv8/i;

    .line 62
    .line 63
    invoke-interface {p0, v2}, Lv8/n;->j0(Lv8/i;)Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-eqz v2, :cond_3

    .line 68
    .line 69
    invoke-interface {p0, p1}, Lv8/n;->i0(Lv8/g;)Z

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    if-eqz v2, :cond_3

    .line 74
    .line 75
    if-eqz v1, :cond_3

    .line 76
    .line 77
    invoke-interface {p0, v0}, Lkotlin/reflect/jvm/internal/impl/types/e1;->l0(Lv8/g;)Lv8/g;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    goto :goto_2

    .line 82
    :cond_3
    invoke-interface {p0, p2}, Lv8/n;->i0(Lv8/g;)Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-nez v0, :cond_9

    .line 87
    .line 88
    invoke-interface {p0, p1}, Lv8/n;->s(Lv8/g;)Z

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    if-nez p1, :cond_4

    .line 93
    .line 94
    goto :goto_3

    .line 95
    :cond_4
    invoke-interface {p0, p2}, Lkotlin/reflect/jvm/internal/impl/types/e1;->l0(Lv8/g;)Lv8/g;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    :goto_2
    move-object p1, p0

    .line 100
    goto :goto_4

    .line 101
    :cond_5
    move-object p1, v2

    .line 102
    goto :goto_4

    .line 103
    :cond_6
    invoke-interface {p0, v0}, Lkotlin/reflect/jvm/internal/impl/types/e1;->h(Lv8/l;)Z

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    if-eqz v0, :cond_d

    .line 108
    .line 109
    invoke-interface {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/e1;->E0(Lv8/g;)Lv8/g;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    if-nez v0, :cond_7

    .line 114
    .line 115
    return-object v2

    .line 116
    :cond_7
    invoke-static {p0, v0, p2}, Lkotlin/reflect/jvm/internal/impl/types/v;->b(Lkotlin/reflect/jvm/internal/impl/types/e1;Lv8/g;Ljava/util/HashSet;)Lv8/g;

    .line 117
    .line 118
    .line 119
    move-result-object p2

    .line 120
    if-nez p2, :cond_8

    .line 121
    .line 122
    return-object v2

    .line 123
    :cond_8
    invoke-interface {p0, p1}, Lv8/n;->i0(Lv8/g;)Z

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    if-nez v0, :cond_a

    .line 128
    .line 129
    :cond_9
    :goto_3
    move-object p1, p2

    .line 130
    goto :goto_4

    .line 131
    :cond_a
    invoke-interface {p0, p2}, Lv8/n;->i0(Lv8/g;)Z

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    if-eqz v0, :cond_b

    .line 136
    .line 137
    goto :goto_4

    .line 138
    :cond_b
    instance-of v0, p2, Lv8/i;

    .line 139
    .line 140
    if-eqz v0, :cond_c

    .line 141
    .line 142
    move-object v0, p2

    .line 143
    check-cast v0, Lv8/i;

    .line 144
    .line 145
    invoke-interface {p0, v0}, Lv8/n;->j0(Lv8/i;)Z

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    if-eqz v0, :cond_c

    .line 150
    .line 151
    goto :goto_4

    .line 152
    :cond_c
    invoke-interface {p0, p2}, Lkotlin/reflect/jvm/internal/impl/types/e1;->l0(Lv8/g;)Lv8/g;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    :cond_d
    :goto_4
    return-object p1
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
