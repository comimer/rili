.class public Lcom/miui/maml/data/JsonFunctions;
.super Lcom/miui/maml/data/Expression$FunctionImpl;
.source "JsonFunctions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/data/JsonFunctions$Fun;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "Expression"


# instance fields
.field private final mFun:Lcom/miui/maml/data/JsonFunctions$Fun;


# direct methods
.method private constructor <init>(Lcom/miui/maml/data/JsonFunctions$Fun;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/miui/maml/data/Expression$FunctionImpl;-><init>(I)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/miui/maml/data/JsonFunctions;->mFun:Lcom/miui/maml/data/JsonFunctions$Fun;

    .line 5
    .line 6
    return-void
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

.method public static load()V
    .locals 4

    .line 1
    new-instance v0, Lcom/miui/maml/data/JsonFunctions;

    .line 2
    .line 3
    sget-object v1, Lcom/miui/maml/data/JsonFunctions$Fun;->JSON_GET_STRING:Lcom/miui/maml/data/JsonFunctions$Fun;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/JsonFunctions;-><init>(Lcom/miui/maml/data/JsonFunctions$Fun;I)V

    .line 7
    .line 8
    .line 9
    const-string v1, "jsonGetString"

    .line 10
    .line 11
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 12
    .line 13
    .line 14
    new-instance v0, Lcom/miui/maml/data/JsonFunctions;

    .line 15
    .line 16
    sget-object v1, Lcom/miui/maml/data/JsonFunctions$Fun;->JSON_GET_BOOLEAN:Lcom/miui/maml/data/JsonFunctions$Fun;

    .line 17
    .line 18
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/JsonFunctions;-><init>(Lcom/miui/maml/data/JsonFunctions$Fun;I)V

    .line 19
    .line 20
    .line 21
    const-string v1, "jsonGetBoolean"

    .line 22
    .line 23
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 24
    .line 25
    .line 26
    new-instance v0, Lcom/miui/maml/data/JsonFunctions;

    .line 27
    .line 28
    sget-object v1, Lcom/miui/maml/data/JsonFunctions$Fun;->JSON_GET_INT:Lcom/miui/maml/data/JsonFunctions$Fun;

    .line 29
    .line 30
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/JsonFunctions;-><init>(Lcom/miui/maml/data/JsonFunctions$Fun;I)V

    .line 31
    .line 32
    .line 33
    const-string v1, "jsonGetInt"

    .line 34
    .line 35
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 36
    .line 37
    .line 38
    new-instance v0, Lcom/miui/maml/data/JsonFunctions;

    .line 39
    .line 40
    sget-object v1, Lcom/miui/maml/data/JsonFunctions$Fun;->JSON_GET_OBJECT:Lcom/miui/maml/data/JsonFunctions$Fun;

    .line 41
    .line 42
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/JsonFunctions;-><init>(Lcom/miui/maml/data/JsonFunctions$Fun;I)V

    .line 43
    .line 44
    .line 45
    const-string v1, "jsonGetObject"

    .line 46
    .line 47
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 48
    .line 49
    .line 50
    new-instance v0, Lcom/miui/maml/data/JsonFunctions;

    .line 51
    .line 52
    sget-object v1, Lcom/miui/maml/data/JsonFunctions$Fun;->JSON_GET_ARRAY:Lcom/miui/maml/data/JsonFunctions$Fun;

    .line 53
    .line 54
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/JsonFunctions;-><init>(Lcom/miui/maml/data/JsonFunctions$Fun;I)V

    .line 55
    .line 56
    .line 57
    const-string v1, "jsonGetArray"

    .line 58
    .line 59
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 60
    .line 61
    .line 62
    new-instance v0, Lcom/miui/maml/data/JsonFunctions;

    .line 63
    .line 64
    sget-object v1, Lcom/miui/maml/data/JsonFunctions$Fun;->JSON_ARRAY_GET_INDEX:Lcom/miui/maml/data/JsonFunctions$Fun;

    .line 65
    .line 66
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/JsonFunctions;-><init>(Lcom/miui/maml/data/JsonFunctions$Fun;I)V

    .line 67
    .line 68
    .line 69
    const-string v1, "jsonArrayGetIndex"

    .line 70
    .line 71
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 72
    .line 73
    .line 74
    new-instance v0, Lcom/miui/maml/data/JsonFunctions;

    .line 75
    .line 76
    sget-object v1, Lcom/miui/maml/data/JsonFunctions$Fun;->JSON_NEW_OBJECT:Lcom/miui/maml/data/JsonFunctions$Fun;

    .line 77
    .line 78
    const/4 v3, 0x0

    .line 79
    invoke-direct {v0, v1, v3}, Lcom/miui/maml/data/JsonFunctions;-><init>(Lcom/miui/maml/data/JsonFunctions$Fun;I)V

    .line 80
    .line 81
    .line 82
    const-string v1, "newJsonObject"

    .line 83
    .line 84
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 85
    .line 86
    .line 87
    new-instance v0, Lcom/miui/maml/data/JsonFunctions;

    .line 88
    .line 89
    sget-object v1, Lcom/miui/maml/data/JsonFunctions$Fun;->JSON_NEW_JSON_ARRAY:Lcom/miui/maml/data/JsonFunctions$Fun;

    .line 90
    .line 91
    invoke-direct {v0, v1, v3}, Lcom/miui/maml/data/JsonFunctions;-><init>(Lcom/miui/maml/data/JsonFunctions$Fun;I)V

    .line 92
    .line 93
    .line 94
    const-string v1, "newJsonArray"

    .line 95
    .line 96
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 97
    .line 98
    .line 99
    new-instance v0, Lcom/miui/maml/data/JsonFunctions;

    .line 100
    .line 101
    sget-object v1, Lcom/miui/maml/data/JsonFunctions$Fun;->JSON_ARRAY_LENGTH:Lcom/miui/maml/data/JsonFunctions$Fun;

    .line 102
    .line 103
    const/4 v3, 0x1

    .line 104
    invoke-direct {v0, v1, v3}, Lcom/miui/maml/data/JsonFunctions;-><init>(Lcom/miui/maml/data/JsonFunctions$Fun;I)V

    .line 105
    .line 106
    .line 107
    const-string v1, "getJsonArrayLength"

    .line 108
    .line 109
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 110
    .line 111
    .line 112
    new-instance v0, Lcom/miui/maml/data/JsonFunctions;

    .line 113
    .line 114
    sget-object v1, Lcom/miui/maml/data/JsonFunctions$Fun;->JSON_OBJECT_EQUALS:Lcom/miui/maml/data/JsonFunctions$Fun;

    .line 115
    .line 116
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/JsonFunctions;-><init>(Lcom/miui/maml/data/JsonFunctions$Fun;I)V

    .line 117
    .line 118
    .line 119
    const-string v1, "jsonObjectEquals"

    .line 120
    .line 121
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 122
    .line 123
    .line 124
    new-instance v0, Lcom/miui/maml/data/JsonFunctions;

    .line 125
    .line 126
    sget-object v1, Lcom/miui/maml/data/JsonFunctions$Fun;->TO_JSON_OBJECT:Lcom/miui/maml/data/JsonFunctions$Fun;

    .line 127
    .line 128
    invoke-direct {v0, v1, v3}, Lcom/miui/maml/data/JsonFunctions;-><init>(Lcom/miui/maml/data/JsonFunctions$Fun;I)V

    .line 129
    .line 130
    .line 131
    const-string v1, "strToJson"

    .line 132
    .line 133
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 134
    .line 135
    .line 136
    new-instance v0, Lcom/miui/maml/data/JsonFunctions;

    .line 137
    .line 138
    sget-object v1, Lcom/miui/maml/data/JsonFunctions$Fun;->TO_STR_FROM_JSON:Lcom/miui/maml/data/JsonFunctions$Fun;

    .line 139
    .line 140
    invoke-direct {v0, v1, v3}, Lcom/miui/maml/data/JsonFunctions;-><init>(Lcom/miui/maml/data/JsonFunctions$Fun;I)V

    .line 141
    .line 142
    .line 143
    const-string v1, "jsonToStr"

    .line 144
    .line 145
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 146
    .line 147
    .line 148
    new-instance v0, Lcom/miui/maml/data/JsonFunctions;

    .line 149
    .line 150
    sget-object v1, Lcom/miui/maml/data/JsonFunctions$Fun;->IS_JSON_OBJECT:Lcom/miui/maml/data/JsonFunctions$Fun;

    .line 151
    .line 152
    invoke-direct {v0, v1, v3}, Lcom/miui/maml/data/JsonFunctions;-><init>(Lcom/miui/maml/data/JsonFunctions$Fun;I)V

    .line 153
    .line 154
    .line 155
    const-string v1, "isJsonObject"

    .line 156
    .line 157
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 158
    .line 159
    .line 160
    new-instance v0, Lcom/miui/maml/data/JsonFunctions;

    .line 161
    .line 162
    sget-object v1, Lcom/miui/maml/data/JsonFunctions$Fun;->IS_JSON_ARRAY:Lcom/miui/maml/data/JsonFunctions$Fun;

    .line 163
    .line 164
    invoke-direct {v0, v1, v3}, Lcom/miui/maml/data/JsonFunctions;-><init>(Lcom/miui/maml/data/JsonFunctions$Fun;I)V

    .line 165
    .line 166
    .line 167
    const-string v1, "isJsonArray"

    .line 168
    .line 169
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 170
    .line 171
    .line 172
    return-void
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
.method public evaluate([Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Variables;)D
    .locals 6

    .line 1
    sget-object p2, Lcom/miui/maml/data/JsonFunctions$1;->$SwitchMap$com$miui$maml$data$JsonFunctions$Fun:[I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/miui/maml/data/JsonFunctions;->mFun:Lcom/miui/maml/data/JsonFunctions$Fun;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    aget p2, p2, v0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 13
    .line 14
    const-wide/16 v3, 0x0

    .line 15
    .line 16
    const/4 v5, 0x0

    .line 17
    packed-switch p2, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    goto/16 :goto_5

    .line 21
    .line 22
    :pswitch_0
    aget-object p2, p1, v5

    .line 23
    .line 24
    invoke-virtual {p2}, Lcom/miui/maml/data/Expression;->evaluateJsonObject()Lorg/json/JSONObject;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    if-eqz p2, :cond_4

    .line 29
    .line 30
    aget-object p1, p1, v0

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-eqz p1, :cond_0

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    move-wide v1, v3

    .line 52
    :goto_0
    return-wide v1

    .line 53
    :pswitch_1
    aget-object p2, p1, v5

    .line 54
    .line 55
    invoke-virtual {p2}, Lcom/miui/maml/data/Expression;->evaluateJsonObject()Lorg/json/JSONObject;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    if-eqz p2, :cond_4

    .line 60
    .line 61
    aget-object p1, p1, v0

    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    :goto_1
    int-to-double p1, p1

    .line 72
    return-wide p1

    .line 73
    :pswitch_2
    aget-object p1, p1, v5

    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluateJsonArray()Lorg/json/JSONArray;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    if-eqz p1, :cond_1

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_1
    move-wide v1, v3

    .line 83
    :goto_2
    return-wide v1

    .line 84
    :pswitch_3
    aget-object p1, p1, v5

    .line 85
    .line 86
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluateJsonObject()Lorg/json/JSONObject;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    if-eqz p1, :cond_2

    .line 91
    .line 92
    goto :goto_3

    .line 93
    :cond_2
    move-wide v1, v3

    .line 94
    :goto_3
    return-wide v1

    .line 95
    :pswitch_4
    aget-object p2, p1, v5

    .line 96
    .line 97
    invoke-virtual {p2}, Lcom/miui/maml/data/Expression;->evaluateJsonObject()Lorg/json/JSONObject;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    aget-object p1, p1, v0

    .line 102
    .line 103
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluateJsonObject()Lorg/json/JSONObject;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    if-eqz p2, :cond_4

    .line 108
    .line 109
    if-eqz p1, :cond_4

    .line 110
    .line 111
    if-ne p2, p1, :cond_3

    .line 112
    .line 113
    goto :goto_4

    .line 114
    :cond_3
    move-wide v1, v3

    .line 115
    :goto_4
    return-wide v1

    .line 116
    :pswitch_5
    aget-object p1, p1, v5

    .line 117
    .line 118
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluateJsonArray()Lorg/json/JSONArray;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    if-eqz p1, :cond_4

    .line 123
    .line 124
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    goto :goto_1

    .line 129
    :cond_4
    :goto_5
    return-wide v3

    .line 130
    nop

    .line 131
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
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

.method public evaluateJsonArray([Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Variables;)Lorg/json/JSONArray;
    .locals 2

    .line 1
    sget-object v0, Lcom/miui/maml/data/JsonFunctions$1;->$SwitchMap$com$miui$maml$data$JsonFunctions$Fun:[I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/miui/maml/data/JsonFunctions;->mFun:Lcom/miui/maml/data/JsonFunctions$Fun;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    aget v0, v0, v1

    .line 10
    .line 11
    const/16 v1, 0xd

    .line 12
    .line 13
    if-eq v0, v1, :cond_1

    .line 14
    .line 15
    const/16 v1, 0xe

    .line 16
    .line 17
    if-eq v0, v1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance p1, Lorg/json/JSONArray;

    .line 21
    .line 22
    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    .line 23
    .line 24
    .line 25
    return-object p1

    .line 26
    :cond_1
    const/4 v0, 0x0

    .line 27
    aget-object v0, p1, v0

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluateJsonObject()Lorg/json/JSONObject;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    const/4 p2, 0x1

    .line 36
    aget-object p1, p1, p2

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    return-object p1

    .line 47
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/miui/maml/data/Expression$FunctionImpl;->evaluateJsonArray([Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Variables;)Lorg/json/JSONArray;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    return-object p1
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
.end method

.method public evaluateJsonObject([Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Variables;)Lorg/json/JSONObject;
    .locals 3

    .line 1
    sget-object v0, Lcom/miui/maml/data/JsonFunctions$1;->$SwitchMap$com$miui$maml$data$JsonFunctions$Fun:[I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/miui/maml/data/JsonFunctions;->mFun:Lcom/miui/maml/data/JsonFunctions$Fun;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    aget v0, v0, v1

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    const/4 v2, 0x0

    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    goto :goto_1

    .line 17
    :pswitch_0
    aget-object v0, p1, v2

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluateJsonArray()Lorg/json/JSONArray;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    aget-object v1, p1, v1

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 26
    .line 27
    .line 28
    move-result-wide v1

    .line 29
    double-to-int v1, v1

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-ge v1, v2, :cond_1

    .line 37
    .line 38
    :try_start_0
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 39
    .line 40
    .line 41
    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 42
    return-object p1

    .line 43
    :pswitch_1
    aget-object p1, p1, v2

    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    if-eqz p1, :cond_0

    .line 50
    .line 51
    :try_start_1
    new-instance p2, Lorg/json/JSONObject;

    .line 52
    .line 53
    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catch_0
    :cond_0
    const/4 p2, 0x0

    .line 58
    :goto_0
    return-object p2

    .line 59
    :pswitch_2
    new-instance p1, Lorg/json/JSONObject;

    .line 60
    .line 61
    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 62
    .line 63
    .line 64
    return-object p1

    .line 65
    :pswitch_3
    aget-object v0, p1, v2

    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluateJsonObject()Lorg/json/JSONObject;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    if-eqz v0, :cond_1

    .line 72
    .line 73
    aget-object p1, p1, v1

    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    return-object p1

    .line 84
    :catch_1
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/miui/maml/data/Expression$FunctionImpl;->evaluateJsonObject([Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Variables;)Lorg/json/JSONObject;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    return-object p1

    .line 89
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
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
.end method

.method public evaluateStr([Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Variables;)Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lcom/miui/maml/data/JsonFunctions$1;->$SwitchMap$com$miui$maml$data$JsonFunctions$Fun:[I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/miui/maml/data/JsonFunctions;->mFun:Lcom/miui/maml/data/JsonFunctions$Fun;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    aget v0, v0, v1

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    const/4 v2, 0x0

    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :pswitch_0
    aget-object p1, p1, v1

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluateJsonObject()Lorg/json/JSONObject;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    :cond_0
    return-object v2

    .line 30
    :pswitch_1
    aget-object p2, p1, v1

    .line 31
    .line 32
    invoke-virtual {p2}, Lcom/miui/maml/data/Expression;->evaluateJsonObject()Lorg/json/JSONObject;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    if-eqz p2, :cond_1

    .line 37
    .line 38
    const/4 v0, 0x1

    .line 39
    aget-object p1, p1, v0

    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p2, p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    return-object p1

    .line 50
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/data/JsonFunctions;->evaluate([Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Variables;)D

    .line 51
    .line 52
    .line 53
    move-result-wide p1

    .line 54
    invoke-static {p1, p2}, Lcom/miui/maml/util/Utils;->doubleToString(D)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    return-object p1

    .line 59
    :cond_1
    :goto_0
    return-object v2

    .line 60
    nop

    .line 61
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
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
.end method

.method public reset()V
    .locals 0

    return-void
.end method
