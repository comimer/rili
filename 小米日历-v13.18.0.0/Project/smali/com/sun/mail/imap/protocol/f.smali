.class public Lcom/sun/mail/imap/protocol/f;
.super Lcom/sun/mail/iap/c;
.source "IMAPResponse.java"


# instance fields
.field private f:I


# virtual methods
.method public i()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/sun/mail/imap/protocol/f;->f:I

    .line 2
    .line 3
    return v0
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

.method public j()[Ljava/lang/String;
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/sun/mail/iap/c;->g()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/sun/mail/iap/c;->c:[B

    .line 5
    .line 6
    iget v1, p0, Lcom/sun/mail/iap/c;->a:I

    .line 7
    .line 8
    aget-byte v0, v0, v1

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    const/16 v3, 0x28

    .line 12
    .line 13
    if-eq v0, v3, :cond_0

    .line 14
    .line 15
    return-object v2

    .line 16
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 17
    .line 18
    iput v1, p0, Lcom/sun/mail/iap/c;->a:I

    .line 19
    .line 20
    new-instance v0, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    iget v1, p0, Lcom/sun/mail/iap/c;->a:I

    .line 26
    .line 27
    :goto_0
    iget-object v3, p0, Lcom/sun/mail/iap/c;->c:[B

    .line 28
    .line 29
    iget v4, p0, Lcom/sun/mail/iap/c;->a:I

    .line 30
    .line 31
    aget-byte v5, v3, v4

    .line 32
    .line 33
    const/16 v6, 0x29

    .line 34
    .line 35
    if-eq v5, v6, :cond_2

    .line 36
    .line 37
    const/16 v6, 0x20

    .line 38
    .line 39
    if-ne v5, v6, :cond_1

    .line 40
    .line 41
    invoke-static {v3, v1, v4}, Lcom/sun/mail/util/a;->e([BII)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    iget v1, p0, Lcom/sun/mail/iap/c;->a:I

    .line 49
    .line 50
    add-int/lit8 v1, v1, 0x1

    .line 51
    .line 52
    :cond_1
    iget v3, p0, Lcom/sun/mail/iap/c;->a:I

    .line 53
    .line 54
    add-int/lit8 v3, v3, 0x1

    .line 55
    .line 56
    iput v3, p0, Lcom/sun/mail/iap/c;->a:I

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    if-le v4, v1, :cond_3

    .line 60
    .line 61
    invoke-static {v3, v1, v4}, Lcom/sun/mail/util/a;->e([BII)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    :cond_3
    iget v1, p0, Lcom/sun/mail/iap/c;->a:I

    .line 69
    .line 70
    add-int/lit8 v1, v1, 0x1

    .line 71
    .line 72
    iput v1, p0, Lcom/sun/mail/iap/c;->a:I

    .line 73
    .line 74
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-lez v1, :cond_4

    .line 79
    .line 80
    new-array v1, v1, [Ljava/lang/String;

    .line 81
    .line 82
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    check-cast v0, [Ljava/lang/String;

    .line 87
    .line 88
    return-object v0

    .line 89
    :cond_4
    return-object v2
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
