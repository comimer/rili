.class Lqa/a$b$a;
.super Ljava/lang/Object;
.source "DynamicScroller.java"

# interfaces
.implements Lpa/b$r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqa/a$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lqa/a$b;


# direct methods
.method private constructor <init>(Lqa/a$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lqa/a$b$a;->a:Lqa/a$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lqa/a$b;Lqa/a$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lqa/a$b$a;-><init>(Lqa/a$b;)V

    return-void
.end method


# virtual methods
.method public a(Lpa/b;FF)V
    .locals 3

    .line 1
    iget-object v0, p0, Lqa/a$b$a;->a:Lqa/a$b;

    .line 2
    .line 3
    iput p3, v0, Lqa/a$b;->e:F

    .line 4
    .line 5
    iget v1, v0, Lqa/a$b;->b:I

    .line 6
    .line 7
    float-to-int v2, p2

    .line 8
    add-int/2addr v1, v2

    .line 9
    iput v1, v0, Lqa/a$b;->f:I

    .line 10
    .line 11
    const/4 v0, 0x5

    .line 12
    new-array v0, v0, [Ljava/lang/Object;

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const/4 v1, 0x0

    .line 23
    aput-object p1, v0, v1

    .line 24
    .line 25
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const/4 p2, 0x1

    .line 30
    aput-object p1, v0, p2

    .line 31
    .line 32
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const/4 p2, 0x2

    .line 37
    aput-object p1, v0, p2

    .line 38
    .line 39
    iget-object p1, p0, Lqa/a$b$a;->a:Lqa/a$b;

    .line 40
    .line 41
    invoke-static {p1}, Lqa/a$b;->a(Lqa/a$b;)F

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    const/4 p2, 0x3

    .line 50
    aput-object p1, v0, p2

    .line 51
    .line 52
    iget-object p1, p0, Lqa/a$b$a;->a:Lqa/a$b;

    .line 53
    .line 54
    invoke-static {p1}, Lqa/a$b;->b(Lqa/a$b;)F

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    const/4 p2, 0x4

    .line 63
    aput-object p1, v0, p2

    .line 64
    .line 65
    const-string p1, "%s updating value(%f), velocity(%f), min(%f), max(%f)"

    .line 66
    .line 67
    invoke-static {p1, v0}, Lqa/b;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    return-void
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
