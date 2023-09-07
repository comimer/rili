.class final Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Combine.kt"

# interfaces
.implements Lw7/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/internal/CombineKt;->a(Lkotlinx/coroutines/flow/e;[Lkotlinx/coroutines/flow/d;Lw7/a;Lw7/q;Lkotlin/coroutines/c;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lw7/p<",
        "Lkotlinx/coroutines/k0;",
        "Lkotlin/coroutines/c<",
        "-",
        "Lkotlin/u;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0004\u001a\u00020\u0003\"\u0004\u0008\u0000\u0010\u0000\"\u0004\u0008\u0001\u0010\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "R",
        "T",
        "Lkotlinx/coroutines/k0;",
        "Lkotlin/u;",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2"
    f = "Combine.kt"
    l = {
        0x39,
        0x4f,
        0x52
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $arrayFactory:Lw7/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw7/a<",
            "[TT;>;"
        }
    .end annotation
.end field

.field final synthetic $flows:[Lkotlinx/coroutines/flow/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlinx/coroutines/flow/d<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic $this_combineInternal:Lkotlinx/coroutines/flow/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/e<",
            "TR;>;"
        }
    .end annotation
.end field

.field final synthetic $transform:Lw7/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw7/q<",
            "Lkotlinx/coroutines/flow/e<",
            "-TR;>;[TT;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lkotlin/u;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field I$0:I

.field I$1:I

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>([Lkotlinx/coroutines/flow/d;Lw7/a;Lw7/q;Lkotlinx/coroutines/flow/e;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lkotlinx/coroutines/flow/d<",
            "+TT;>;",
            "Lw7/a<",
            "[TT;>;",
            "Lw7/q<",
            "-",
            "Lkotlinx/coroutines/flow/e<",
            "-TR;>;-[TT;-",
            "Lkotlin/coroutines/c<",
            "-",
            "Lkotlin/u;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlinx/coroutines/flow/e<",
            "-TR;>;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$flows:[Lkotlinx/coroutines/flow/d;

    iput-object p2, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$arrayFactory:Lw7/a;

    iput-object p3, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$transform:Lw7/q;

    iput-object p4, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$this_combineInternal:Lkotlinx/coroutines/flow/e;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/c<",
            "*>;)",
            "Lkotlin/coroutines/c<",
            "Lkotlin/u;",
            ">;"
        }
    .end annotation

    new-instance v6, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;

    iget-object v1, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$flows:[Lkotlinx/coroutines/flow/d;

    iget-object v2, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$arrayFactory:Lw7/a;

    iget-object v3, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$transform:Lw7/q;

    iget-object v4, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$this_combineInternal:Lkotlinx/coroutines/flow/e;

    move-object v0, v6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;-><init>([Lkotlinx/coroutines/flow/d;Lw7/a;Lw7/q;Lkotlinx/coroutines/flow/e;Lkotlin/coroutines/c;)V

    iput-object p1, v6, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$0:Ljava/lang/Object;

    return-object v6
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/k0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->invoke(Lkotlinx/coroutines/k0;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/k0;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/k0;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lkotlin/u;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;

    sget-object p2, Lkotlin/u;->a:Lkotlin/u;

    invoke-virtual {p1, p2}, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget v2, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->label:I

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x3

    .line 11
    const/4 v5, 0x2

    .line 12
    const/4 v6, 0x1

    .line 13
    if-eqz v2, :cond_3

    .line 14
    .line 15
    if-eq v2, v6, :cond_2

    .line 16
    .line 17
    if-eq v2, v5, :cond_1

    .line 18
    .line 19
    if-ne v2, v4, :cond_0

    .line 20
    .line 21
    iget v2, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->I$1:I

    .line 22
    .line 23
    iget v3, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->I$0:I

    .line 24
    .line 25
    iget-object v7, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$2:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v7, [B

    .line 28
    .line 29
    iget-object v8, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$1:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v8, Lkotlinx/coroutines/channels/e;

    .line 32
    .line 33
    iget-object v9, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$0:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v9, [Ljava/lang/Object;

    .line 36
    .line 37
    invoke-static/range {p1 .. p1}, Lkotlin/j;->b(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    move v13, v3

    .line 41
    move-object v14, v9

    .line 42
    move v3, v2

    .line 43
    move-object v2, v7

    .line 44
    move-object v7, v8

    .line 45
    move-object v8, v0

    .line 46
    goto/16 :goto_4

    .line 47
    .line 48
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 49
    .line 50
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 51
    .line 52
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw v1

    .line 56
    :cond_1
    iget v2, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->I$1:I

    .line 57
    .line 58
    iget v3, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->I$0:I

    .line 59
    .line 60
    iget-object v7, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$2:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v7, [B

    .line 63
    .line 64
    iget-object v8, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$1:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast v8, Lkotlinx/coroutines/channels/e;

    .line 67
    .line 68
    iget-object v9, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$0:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v9, [Ljava/lang/Object;

    .line 71
    .line 72
    invoke-static/range {p1 .. p1}, Lkotlin/j;->b(Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    move v13, v3

    .line 76
    move-object v14, v9

    .line 77
    move v3, v2

    .line 78
    move-object v2, v7

    .line 79
    move-object v7, v8

    .line 80
    move-object v8, v0

    .line 81
    goto/16 :goto_1

    .line 82
    .line 83
    :cond_2
    iget v2, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->I$1:I

    .line 84
    .line 85
    iget v3, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->I$0:I

    .line 86
    .line 87
    iget-object v7, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$2:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast v7, [B

    .line 90
    .line 91
    iget-object v8, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$1:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast v8, Lkotlinx/coroutines/channels/e;

    .line 94
    .line 95
    iget-object v9, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$0:Ljava/lang/Object;

    .line 96
    .line 97
    check-cast v9, [Ljava/lang/Object;

    .line 98
    .line 99
    invoke-static/range {p1 .. p1}, Lkotlin/j;->b(Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    move-object/from16 v10, p1

    .line 103
    .line 104
    check-cast v10, Lkotlinx/coroutines/channels/h;

    .line 105
    .line 106
    invoke-virtual {v10}, Lkotlinx/coroutines/channels/h;->l()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v10

    .line 110
    move-object v15, v9

    .line 111
    move-object v9, v0

    .line 112
    move-object/from16 v23, v7

    .line 113
    .line 114
    move v7, v2

    .line 115
    move-object/from16 v2, v23

    .line 116
    .line 117
    goto/16 :goto_2

    .line 118
    .line 119
    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/j;->b(Ljava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    iget-object v2, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$0:Ljava/lang/Object;

    .line 123
    .line 124
    check-cast v2, Lkotlinx/coroutines/k0;

    .line 125
    .line 126
    iget-object v7, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$flows:[Lkotlinx/coroutines/flow/d;

    .line 127
    .line 128
    array-length v13, v7

    .line 129
    if-nez v13, :cond_4

    .line 130
    .line 131
    sget-object v1, Lkotlin/u;->a:Lkotlin/u;

    .line 132
    .line 133
    return-object v1

    .line 134
    :cond_4
    new-array v14, v13, [Ljava/lang/Object;

    .line 135
    .line 136
    sget-object v8, Lkotlinx/coroutines/flow/internal/n;->b:Lkotlinx/coroutines/internal/e0;

    .line 137
    .line 138
    const/4 v9, 0x0

    .line 139
    const/4 v10, 0x0

    .line 140
    const/4 v11, 0x6

    .line 141
    const/4 v12, 0x0

    .line 142
    move-object v7, v14

    .line 143
    invoke-static/range {v7 .. v12}, Lkotlin/collections/j;->l([Ljava/lang/Object;Ljava/lang/Object;IIILjava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    const/4 v7, 0x6

    .line 147
    const/4 v8, 0x0

    .line 148
    invoke-static {v13, v8, v8, v7, v8}, Lkotlinx/coroutines/channels/g;->c(ILkotlinx/coroutines/channels/BufferOverflow;Lw7/l;ILjava/lang/Object;)Lkotlinx/coroutines/channels/e;

    .line 149
    .line 150
    .line 151
    move-result-object v21

    .line 152
    new-instance v12, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 153
    .line 154
    invoke-direct {v12, v13}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 155
    .line 156
    .line 157
    move v7, v3

    .line 158
    :goto_0
    if-ge v7, v13, :cond_5

    .line 159
    .line 160
    add-int/lit8 v22, v7, 0x1

    .line 161
    .line 162
    const/4 v8, 0x0

    .line 163
    const/4 v9, 0x0

    .line 164
    new-instance v10, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2$1;

    .line 165
    .line 166
    iget-object v11, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$flows:[Lkotlinx/coroutines/flow/d;

    .line 167
    .line 168
    const/16 v20, 0x0

    .line 169
    .line 170
    move-object v15, v10

    .line 171
    move-object/from16 v16, v11

    .line 172
    .line 173
    move/from16 v17, v7

    .line 174
    .line 175
    move-object/from16 v18, v12

    .line 176
    .line 177
    move-object/from16 v19, v21

    .line 178
    .line 179
    invoke-direct/range {v15 .. v20}, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2$1;-><init>([Lkotlinx/coroutines/flow/d;ILjava/util/concurrent/atomic/AtomicInteger;Lkotlinx/coroutines/channels/e;Lkotlin/coroutines/c;)V

    .line 180
    .line 181
    .line 182
    const/4 v11, 0x3

    .line 183
    const/4 v15, 0x0

    .line 184
    move-object v7, v2

    .line 185
    move-object/from16 v16, v12

    .line 186
    .line 187
    move-object v12, v15

    .line 188
    invoke-static/range {v7 .. v12}, Lkotlinx/coroutines/h;->d(Lkotlinx/coroutines/k0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lw7/p;ILjava/lang/Object;)Lkotlinx/coroutines/s1;

    .line 189
    .line 190
    .line 191
    move-object/from16 v12, v16

    .line 192
    .line 193
    move/from16 v7, v22

    .line 194
    .line 195
    goto :goto_0

    .line 196
    :cond_5
    new-array v2, v13, [B

    .line 197
    .line 198
    move-object v8, v0

    .line 199
    move-object/from16 v7, v21

    .line 200
    .line 201
    :goto_1
    add-int/2addr v3, v6

    .line 202
    int-to-byte v3, v3

    .line 203
    iput-object v14, v8, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$0:Ljava/lang/Object;

    .line 204
    .line 205
    iput-object v7, v8, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$1:Ljava/lang/Object;

    .line 206
    .line 207
    iput-object v2, v8, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$2:Ljava/lang/Object;

    .line 208
    .line 209
    iput v13, v8, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->I$0:I

    .line 210
    .line 211
    iput v3, v8, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->I$1:I

    .line 212
    .line 213
    iput v6, v8, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->label:I

    .line 214
    .line 215
    invoke-interface {v7, v8}, Lkotlinx/coroutines/channels/ReceiveChannel;->i(Lkotlin/coroutines/c;)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v10

    .line 219
    if-ne v10, v1, :cond_6

    .line 220
    .line 221
    return-object v1

    .line 222
    :cond_6
    move-object v9, v8

    .line 223
    move-object v15, v14

    .line 224
    move-object v8, v7

    .line 225
    move v7, v3

    .line 226
    move v3, v13

    .line 227
    :goto_2
    invoke-static {v10}, Lkotlinx/coroutines/channels/h;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v10

    .line 231
    check-cast v10, Lkotlin/collections/g0;

    .line 232
    .line 233
    if-nez v10, :cond_7

    .line 234
    .line 235
    sget-object v1, Lkotlin/u;->a:Lkotlin/u;

    .line 236
    .line 237
    return-object v1

    .line 238
    :cond_7
    invoke-virtual {v10}, Lkotlin/collections/g0;->c()I

    .line 239
    .line 240
    .line 241
    move-result v11

    .line 242
    aget-object v12, v15, v11

    .line 243
    .line 244
    invoke-virtual {v10}, Lkotlin/collections/g0;->d()Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v10

    .line 248
    aput-object v10, v15, v11

    .line 249
    .line 250
    sget-object v10, Lkotlinx/coroutines/flow/internal/n;->b:Lkotlinx/coroutines/internal/e0;

    .line 251
    .line 252
    if-ne v12, v10, :cond_8

    .line 253
    .line 254
    add-int/lit8 v3, v3, -0x1

    .line 255
    .line 256
    :cond_8
    aget-byte v10, v2, v11

    .line 257
    .line 258
    if-ne v10, v7, :cond_9

    .line 259
    .line 260
    goto :goto_3

    .line 261
    :cond_9
    int-to-byte v10, v7

    .line 262
    aput-byte v10, v2, v11

    .line 263
    .line 264
    invoke-interface {v8}, Lkotlinx/coroutines/channels/ReceiveChannel;->h()Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object v10

    .line 268
    invoke-static {v10}, Lkotlinx/coroutines/channels/h;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-result-object v10

    .line 272
    check-cast v10, Lkotlin/collections/g0;

    .line 273
    .line 274
    if-nez v10, :cond_7

    .line 275
    .line 276
    :goto_3
    if-nez v3, :cond_c

    .line 277
    .line 278
    iget-object v10, v9, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$arrayFactory:Lw7/a;

    .line 279
    .line 280
    invoke-interface {v10}, Lw7/a;->invoke()Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    move-result-object v10

    .line 284
    check-cast v10, [Ljava/lang/Object;

    .line 285
    .line 286
    if-nez v10, :cond_b

    .line 287
    .line 288
    iget-object v10, v9, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$transform:Lw7/q;

    .line 289
    .line 290
    iget-object v11, v9, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$this_combineInternal:Lkotlinx/coroutines/flow/e;

    .line 291
    .line 292
    iput-object v15, v9, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$0:Ljava/lang/Object;

    .line 293
    .line 294
    iput-object v8, v9, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$1:Ljava/lang/Object;

    .line 295
    .line 296
    iput-object v2, v9, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$2:Ljava/lang/Object;

    .line 297
    .line 298
    iput v3, v9, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->I$0:I

    .line 299
    .line 300
    iput v7, v9, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->I$1:I

    .line 301
    .line 302
    iput v5, v9, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->label:I

    .line 303
    .line 304
    invoke-interface {v10, v11, v15, v9}, Lw7/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object v10

    .line 308
    if-ne v10, v1, :cond_a

    .line 309
    .line 310
    return-object v1

    .line 311
    :cond_a
    move v13, v3

    .line 312
    move v3, v7

    .line 313
    move-object v7, v8

    .line 314
    move-object v8, v9

    .line 315
    move-object v14, v15

    .line 316
    goto :goto_1

    .line 317
    :cond_b
    const/4 v13, 0x0

    .line 318
    const/4 v14, 0x0

    .line 319
    const/16 v16, 0x0

    .line 320
    .line 321
    const/16 v17, 0xe

    .line 322
    .line 323
    const/16 v18, 0x0

    .line 324
    .line 325
    move-object v11, v15

    .line 326
    move-object v12, v10

    .line 327
    move-object v5, v15

    .line 328
    move/from16 v15, v16

    .line 329
    .line 330
    move/from16 v16, v17

    .line 331
    .line 332
    move-object/from16 v17, v18

    .line 333
    .line 334
    invoke-static/range {v11 .. v17}, Lkotlin/collections/j;->g([Ljava/lang/Object;[Ljava/lang/Object;IIIILjava/lang/Object;)[Ljava/lang/Object;

    .line 335
    .line 336
    .line 337
    iget-object v11, v9, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$transform:Lw7/q;

    .line 338
    .line 339
    iget-object v12, v9, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$this_combineInternal:Lkotlinx/coroutines/flow/e;

    .line 340
    .line 341
    iput-object v5, v9, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$0:Ljava/lang/Object;

    .line 342
    .line 343
    iput-object v8, v9, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$1:Ljava/lang/Object;

    .line 344
    .line 345
    iput-object v2, v9, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$2:Ljava/lang/Object;

    .line 346
    .line 347
    iput v3, v9, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->I$0:I

    .line 348
    .line 349
    iput v7, v9, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->I$1:I

    .line 350
    .line 351
    iput v4, v9, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->label:I

    .line 352
    .line 353
    invoke-interface {v11, v12, v10, v9}, Lw7/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    .line 355
    .line 356
    move-result-object v10

    .line 357
    if-ne v10, v1, :cond_d

    .line 358
    .line 359
    return-object v1

    .line 360
    :goto_4
    const/4 v5, 0x2

    .line 361
    goto/16 :goto_1

    .line 362
    .line 363
    :cond_c
    move-object v5, v15

    .line 364
    :cond_d
    move v13, v3

    .line 365
    move-object v14, v5

    .line 366
    move v3, v7

    .line 367
    move-object v7, v8

    .line 368
    move-object v8, v9

    .line 369
    goto :goto_4
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
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
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
.end method
