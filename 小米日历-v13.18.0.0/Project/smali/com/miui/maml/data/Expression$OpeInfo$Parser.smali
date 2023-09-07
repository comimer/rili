.class public Lcom/miui/maml/data/Expression$OpeInfo$Parser;
.super Ljava/lang/Object;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/data/Expression$OpeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Parser"
.end annotation


# instance fields
.field private mFlags:[I

.field private mMatch:I

.field private mStep:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/miui/maml/data/Expression$OpeInfo;->access$000()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    new-array v0, v0, [I

    .line 9
    .line 10
    iput-object v0, p0, Lcom/miui/maml/data/Expression$OpeInfo$Parser;->mFlags:[I

    .line 11
    .line 12
    return-void
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


# virtual methods
.method public accept(CZ)Z
    .locals 7

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p2, :cond_1

    .line 4
    .line 5
    move p2, v1

    .line 6
    :goto_0
    invoke-static {}, Lcom/miui/maml/data/Expression$OpeInfo;->access$000()I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-ge p2, v2, :cond_0

    .line 11
    .line 12
    iget-object v2, p0, Lcom/miui/maml/data/Expression$OpeInfo$Parser;->mFlags:[I

    .line 13
    .line 14
    aput v1, v2, p2

    .line 15
    .line 16
    add-int/lit8 p2, p2, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iput v1, p0, Lcom/miui/maml/data/Expression$OpeInfo$Parser;->mStep:I

    .line 20
    .line 21
    iput v0, p0, Lcom/miui/maml/data/Expression$OpeInfo$Parser;->mMatch:I

    .line 22
    .line 23
    :cond_1
    move p2, v1

    .line 24
    move v2, p2

    .line 25
    :goto_1
    invoke-static {}, Lcom/miui/maml/data/Expression$OpeInfo;->access$000()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    const/4 v4, 0x1

    .line 30
    if-ge p2, v3, :cond_6

    .line 31
    .line 32
    iget-object v3, p0, Lcom/miui/maml/data/Expression$OpeInfo$Parser;->mFlags:[I

    .line 33
    .line 34
    aget v3, v3, p2

    .line 35
    .line 36
    if-ne v3, v0, :cond_2

    .line 37
    .line 38
    goto :goto_3

    .line 39
    :cond_2
    invoke-static {}, Lcom/miui/maml/data/Expression$OpeInfo;->access$100()[Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    aget-object v3, v3, p2

    .line 44
    .line 45
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    iget v6, p0, Lcom/miui/maml/data/Expression$OpeInfo$Parser;->mStep:I

    .line 50
    .line 51
    if-le v5, v6, :cond_5

    .line 52
    .line 53
    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    if-ne v5, p1, :cond_5

    .line 58
    .line 59
    iget v2, p0, Lcom/miui/maml/data/Expression$OpeInfo$Parser;->mStep:I

    .line 60
    .line 61
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    sub-int/2addr v3, v4

    .line 66
    if-ne v2, v3, :cond_3

    .line 67
    .line 68
    move v2, v4

    .line 69
    goto :goto_2

    .line 70
    :cond_3
    move v2, v1

    .line 71
    :goto_2
    iget-object v3, p0, Lcom/miui/maml/data/Expression$OpeInfo$Parser;->mFlags:[I

    .line 72
    .line 73
    aput v1, v3, p2

    .line 74
    .line 75
    if-eqz v2, :cond_4

    .line 76
    .line 77
    iput p2, p0, Lcom/miui/maml/data/Expression$OpeInfo$Parser;->mMatch:I

    .line 78
    .line 79
    :cond_4
    move v2, v4

    .line 80
    goto :goto_3

    .line 81
    :cond_5
    iget-object v3, p0, Lcom/miui/maml/data/Expression$OpeInfo$Parser;->mFlags:[I

    .line 82
    .line 83
    aput v0, v3, p2

    .line 84
    .line 85
    :goto_3
    add-int/lit8 p2, p2, 0x1

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_6
    if-eqz v2, :cond_7

    .line 89
    .line 90
    iget p1, p0, Lcom/miui/maml/data/Expression$OpeInfo$Parser;->mStep:I

    .line 91
    .line 92
    add-int/2addr p1, v4

    .line 93
    iput p1, p0, Lcom/miui/maml/data/Expression$OpeInfo$Parser;->mStep:I

    .line 94
    .line 95
    :cond_7
    return v2
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

.method public getMatch()Lcom/miui/maml/data/Expression$Ope;
    .locals 2

    .line 1
    iget v0, p0, Lcom/miui/maml/data/Expression$OpeInfo$Parser;->mMatch:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    sget-object v0, Lcom/miui/maml/data/Expression$Ope;->INVALID:Lcom/miui/maml/data/Expression$Ope;

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-static {}, Lcom/miui/maml/data/Expression$Ope;->values()[Lcom/miui/maml/data/Expression$Ope;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget v1, p0, Lcom/miui/maml/data/Expression$OpeInfo$Parser;->mMatch:I

    .line 14
    .line 15
    aget-object v0, v0, v1

    .line 16
    .line 17
    :goto_0
    return-object v0
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method
