.class Lcom/xiaomi/ad/entity/util/GsonUtils$IgnoreStringToObjectTranslateAdapter$1;
.super Lcom/google/gson/TypeAdapter;
.source "GsonUtils.java"


# instance fields
.field final synthetic this$0:Lcom/xiaomi/ad/entity/util/GsonUtils$IgnoreStringToObjectTranslateAdapter;

.field final synthetic val$delegate:Lcom/google/gson/TypeAdapter;

.field final synthetic val$tokenType:Lcom/google/gson/reflect/TypeToken;


# direct methods
.method constructor <init>(Lcom/xiaomi/ad/entity/util/GsonUtils$IgnoreStringToObjectTranslateAdapter;Lcom/google/gson/TypeAdapter;Lcom/google/gson/reflect/TypeToken;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/ad/entity/util/GsonUtils$IgnoreStringToObjectTranslateAdapter$1;->this$0:Lcom/xiaomi/ad/entity/util/GsonUtils$IgnoreStringToObjectTranslateAdapter;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/xiaomi/ad/entity/util/GsonUtils$IgnoreStringToObjectTranslateAdapter$1;->val$delegate:Lcom/google/gson/TypeAdapter;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/xiaomi/ad/entity/util/GsonUtils$IgnoreStringToObjectTranslateAdapter$1;->val$tokenType:Lcom/google/gson/reflect/TypeToken;

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
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


# virtual methods
.method public read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/xiaomi/ad/entity/util/GsonUtils$IgnoreStringToObjectTranslateAdapter$1;->val$tokenType:Lcom/google/gson/reflect/TypeToken;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {}, Lcom/xiaomi/ad/entity/util/GsonUtils;->access$000()Ljava/util/Map;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    iget-object v1, p0, Lcom/xiaomi/ad/entity/util/GsonUtils$IgnoreStringToObjectTranslateAdapter$1;->this$0:Lcom/xiaomi/ad/entity/util/GsonUtils$IgnoreStringToObjectTranslateAdapter;

    .line 18
    .line 19
    invoke-static {v1}, Lcom/xiaomi/ad/entity/util/GsonUtils$IgnoreStringToObjectTranslateAdapter;->access$100(Lcom/xiaomi/ad/entity/util/GsonUtils$IgnoreStringToObjectTranslateAdapter;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {v1}, Lcom/xiaomi/ad/entity/util/GsonUtils;->access$200(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    new-instance v2, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string v3, "TAF: skip "

    .line 33
    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v0, " which has customized DESERIALIZER"

    .line 41
    .line 42
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-static {v1, v0}, Ld6/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/xiaomi/ad/entity/util/GsonUtils$IgnoreStringToObjectTranslateAdapter$1;->val$delegate:Lcom/google/gson/TypeAdapter;

    .line 53
    .line 54
    invoke-virtual {v0, p1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    return-object p1

    .line 59
    :cond_0
    const-class v1, Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-nez v1, :cond_2

    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-nez v1, :cond_2

    .line 72
    .line 73
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    sget-object v2, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    .line 78
    .line 79
    if-ne v1, v2, :cond_1

    .line 80
    .line 81
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->skipValue()V

    .line 82
    .line 83
    .line 84
    iget-object p1, p0, Lcom/xiaomi/ad/entity/util/GsonUtils$IgnoreStringToObjectTranslateAdapter$1;->this$0:Lcom/xiaomi/ad/entity/util/GsonUtils$IgnoreStringToObjectTranslateAdapter;

    .line 85
    .line 86
    invoke-static {p1}, Lcom/xiaomi/ad/entity/util/GsonUtils$IgnoreStringToObjectTranslateAdapter;->access$100(Lcom/xiaomi/ad/entity/util/GsonUtils$IgnoreStringToObjectTranslateAdapter;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-static {p1}, Lcom/xiaomi/ad/entity/util/GsonUtils;->access$200(Ljava/lang/String;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .line 98
    .line 99
    const-string v2, "TAF: skip string value for type : "

    .line 100
    .line 101
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-static {p1, v0}, Ld6/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    const/4 p1, 0x0

    .line 115
    return-object p1

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/ad/entity/util/GsonUtils$IgnoreStringToObjectTranslateAdapter$1;->val$delegate:Lcom/google/gson/TypeAdapter;

    .line 117
    .line 118
    invoke-virtual {v0, p1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    return-object p1

    .line 123
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/ad/entity/util/GsonUtils$IgnoreStringToObjectTranslateAdapter$1;->val$delegate:Lcom/google/gson/TypeAdapter;

    .line 124
    .line 125
    invoke-virtual {v0, p1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    return-object p1
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

.method public write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/ad/entity/util/GsonUtils$IgnoreStringToObjectTranslateAdapter$1;->val$delegate:Lcom/google/gson/TypeAdapter;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 4
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
