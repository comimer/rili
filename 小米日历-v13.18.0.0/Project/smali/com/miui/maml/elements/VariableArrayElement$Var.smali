.class Lcom/miui/maml/elements/VariableArrayElement$Var;
.super Ljava/lang/Object;
.source "VariableArrayElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/VariableArrayElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Var"
.end annotation


# instance fields
.field private mConst:Z

.field private mCurrentItemIsExpression:Z

.field private mIndex:I

.field private mIndexExpression:Lcom/miui/maml/data/Expression;

.field private mName:Ljava/lang/String;

.field private mVar:Lcom/miui/maml/data/IndexedVariable;

.field final synthetic this$0:Lcom/miui/maml/elements/VariableArrayElement;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/VariableArrayElement;Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/VariableArrayElement$Var;->this$0:Lcom/miui/maml/elements/VariableArrayElement;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lcom/miui/maml/elements/VariableArrayElement$Var;->mIndex:I

    .line 8
    .line 9
    if-eqz p3, :cond_1

    .line 10
    .line 11
    const-string v0, "name"

    .line 12
    .line 13
    invoke-interface {p3, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/miui/maml/elements/VariableArrayElement$Var;->mName:Ljava/lang/String;

    .line 18
    .line 19
    const-string v0, "index"

    .line 20
    .line 21
    invoke-interface {p3, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {p2, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    iput-object p2, p0, Lcom/miui/maml/elements/VariableArrayElement$Var;->mIndexExpression:Lcom/miui/maml/data/Expression;

    .line 30
    .line 31
    const-string p2, "const"

    .line 32
    .line 33
    invoke-interface {p3, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    iput-boolean p2, p0, Lcom/miui/maml/elements/VariableArrayElement$Var;->mConst:Z

    .line 42
    .line 43
    new-instance p2, Lcom/miui/maml/data/IndexedVariable;

    .line 44
    .line 45
    iget-object p3, p0, Lcom/miui/maml/elements/VariableArrayElement$Var;->mName:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iget-object p1, p1, Lcom/miui/maml/elements/VariableArrayElement;->mType:Lcom/miui/maml/elements/VariableArrayElement$Type;

    .line 52
    .line 53
    sget-object v1, Lcom/miui/maml/elements/VariableArrayElement$Type;->STRING:Lcom/miui/maml/elements/VariableArrayElement$Type;

    .line 54
    .line 55
    if-eq p1, v1, :cond_0

    .line 56
    .line 57
    const/4 p1, 0x1

    .line 58
    goto :goto_0

    .line 59
    :cond_0
    const/4 p1, 0x0

    .line 60
    :goto_0
    invoke-direct {p2, p3, v0, p1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 61
    .line 62
    .line 63
    iput-object p2, p0, Lcom/miui/maml/elements/VariableArrayElement$Var;->mVar:Lcom/miui/maml/data/IndexedVariable;

    .line 64
    .line 65
    :cond_1
    return-void
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

.method private update()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/VariableArrayElement$Var;->mIndexExpression:Lcom/miui/maml/data/Expression;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    double-to-int v0, v0

    .line 11
    if-ltz v0, :cond_6

    .line 12
    .line 13
    iget-object v1, p0, Lcom/miui/maml/elements/VariableArrayElement$Var;->this$0:Lcom/miui/maml/elements/VariableArrayElement;

    .line 14
    .line 15
    invoke-static {v1}, Lcom/miui/maml/elements/VariableArrayElement;->access$000(Lcom/miui/maml/elements/VariableArrayElement;)Ljava/util/ArrayList;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-lt v0, v1, :cond_1

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    iget v1, p0, Lcom/miui/maml/elements/VariableArrayElement$Var;->mIndex:I

    .line 27
    .line 28
    if-ne v1, v0, :cond_2

    .line 29
    .line 30
    iget-boolean v1, p0, Lcom/miui/maml/elements/VariableArrayElement$Var;->mCurrentItemIsExpression:Z

    .line 31
    .line 32
    if-nez v1, :cond_2

    .line 33
    .line 34
    return-void

    .line 35
    :cond_2
    iget-object v1, p0, Lcom/miui/maml/elements/VariableArrayElement$Var;->this$0:Lcom/miui/maml/elements/VariableArrayElement;

    .line 36
    .line 37
    invoke-static {v1}, Lcom/miui/maml/elements/VariableArrayElement;->access$000(Lcom/miui/maml/elements/VariableArrayElement;)Ljava/util/ArrayList;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Lcom/miui/maml/elements/VariableArrayElement$Item;

    .line 46
    .line 47
    iget v2, p0, Lcom/miui/maml/elements/VariableArrayElement$Var;->mIndex:I

    .line 48
    .line 49
    if-eq v2, v0, :cond_3

    .line 50
    .line 51
    iput v0, p0, Lcom/miui/maml/elements/VariableArrayElement$Var;->mIndex:I

    .line 52
    .line 53
    invoke-virtual {v1}, Lcom/miui/maml/elements/VariableArrayElement$Item;->isExpression()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    iput-boolean v0, p0, Lcom/miui/maml/elements/VariableArrayElement$Var;->mCurrentItemIsExpression:Z

    .line 58
    .line 59
    :cond_3
    iget-object v0, p0, Lcom/miui/maml/elements/VariableArrayElement$Var;->this$0:Lcom/miui/maml/elements/VariableArrayElement;

    .line 60
    .line 61
    iget-object v0, v0, Lcom/miui/maml/elements/VariableArrayElement;->mType:Lcom/miui/maml/elements/VariableArrayElement$Type;

    .line 62
    .line 63
    sget-object v2, Lcom/miui/maml/elements/VariableArrayElement$Type;->STRING:Lcom/miui/maml/elements/VariableArrayElement$Type;

    .line 64
    .line 65
    if-ne v0, v2, :cond_4

    .line 66
    .line 67
    iget-object v0, p0, Lcom/miui/maml/elements/VariableArrayElement$Var;->mVar:Lcom/miui/maml/data/IndexedVariable;

    .line 68
    .line 69
    invoke-virtual {v1}, Lcom/miui/maml/elements/VariableArrayElement$Item;->evaluateStr()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_4
    sget-object v2, Lcom/miui/maml/elements/VariableArrayElement$Type;->DOUBLE:Lcom/miui/maml/elements/VariableArrayElement$Type;

    .line 78
    .line 79
    if-ne v0, v2, :cond_5

    .line 80
    .line 81
    iget-object v0, p0, Lcom/miui/maml/elements/VariableArrayElement$Var;->mVar:Lcom/miui/maml/data/IndexedVariable;

    .line 82
    .line 83
    invoke-virtual {v1}, Lcom/miui/maml/elements/VariableArrayElement$Item;->evaluate()Ljava/lang/Double;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    :cond_5
    :goto_0
    return-void

    .line 91
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/miui/maml/elements/VariableArrayElement$Var;->this$0:Lcom/miui/maml/elements/VariableArrayElement;

    .line 92
    .line 93
    iget-object v0, v0, Lcom/miui/maml/elements/VariableArrayElement;->mType:Lcom/miui/maml/elements/VariableArrayElement$Type;

    .line 94
    .line 95
    sget-object v1, Lcom/miui/maml/elements/VariableArrayElement$Type;->STRING:Lcom/miui/maml/elements/VariableArrayElement$Type;

    .line 96
    .line 97
    if-ne v0, v1, :cond_7

    .line 98
    .line 99
    iget-object v0, p0, Lcom/miui/maml/elements/VariableArrayElement$Var;->mVar:Lcom/miui/maml/data/IndexedVariable;

    .line 100
    .line 101
    const/4 v1, 0x0

    .line 102
    invoke-virtual {v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_7
    sget-object v1, Lcom/miui/maml/elements/VariableArrayElement$Type;->DOUBLE:Lcom/miui/maml/elements/VariableArrayElement$Type;

    .line 107
    .line 108
    if-ne v0, v1, :cond_8

    .line 109
    .line 110
    iget-object v0, p0, Lcom/miui/maml/elements/VariableArrayElement$Var;->mVar:Lcom/miui/maml/data/IndexedVariable;

    .line 111
    .line 112
    const-wide/16 v1, 0x0

    .line 113
    .line 114
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 115
    .line 116
    .line 117
    :cond_8
    :goto_2
    return-void
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


# virtual methods
.method public init()V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/miui/maml/elements/VariableArrayElement$Var;->mIndex:I

    .line 3
    .line 4
    invoke-direct {p0}, Lcom/miui/maml/elements/VariableArrayElement$Var;->update()V

    .line 5
    .line 6
    .line 7
    return-void
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

.method public tick()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/elements/VariableArrayElement$Var;->mConst:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/miui/maml/elements/VariableArrayElement$Var;->update()V

    .line 6
    .line 7
    .line 8
    :cond_0
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
