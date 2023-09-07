.class public Lcom/miui/maml/elements/ScreenElementFactory;
.super Ljava/lang/Object;
.source "ScreenElementFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/elements/ScreenElementFactory$FactoryCallback;
    }
.end annotation


# instance fields
.field private mFactoryCallback:Lcom/miui/maml/elements/ScreenElementFactory$FactoryCallback;

.field private mPbrCreator:Lcom/miui/maml/elements/filament/PhysicallyBasedRenderingElement$IPbrCreator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createPbrElement(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)Lcom/miui/maml/elements/ScreenElement;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElementFactory;->mPbrCreator:Lcom/miui/maml/elements/filament/PhysicallyBasedRenderingElement$IPbrCreator;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    const-string v0, "com.miui.maml.elements.filament.PhysicallyRenderingElement"

    .line 6
    .line 7
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x2

    .line 12
    new-array v2, v1, [Ljava/lang/Class;

    .line 13
    .line 14
    const-class v3, Lorg/w3c/dom/Element;

    .line 15
    .line 16
    const/4 v4, 0x0

    .line 17
    aput-object v3, v2, v4

    .line 18
    .line 19
    const-class v3, Lcom/miui/maml/ScreenElementRoot;

    .line 20
    .line 21
    const/4 v5, 0x1

    .line 22
    aput-object v3, v2, v5

    .line 23
    .line 24
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    new-array v1, v1, [Ljava/lang/Object;

    .line 29
    .line 30
    aput-object p1, v1, v4

    .line 31
    .line 32
    aput-object p2, v1, v5

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Lcom/miui/maml/elements/filament/PhysicallyBasedRenderingElement$IPbrCreator;

    .line 39
    .line 40
    iput-object v0, p0, Lcom/miui/maml/elements/ScreenElementFactory;->mPbrCreator:Lcom/miui/maml/elements/filament/PhysicallyBasedRenderingElement$IPbrCreator;

    .line 41
    .line 42
    instance-of v1, v0, Lcom/miui/maml/elements/ScreenElement;

    .line 43
    .line 44
    if-eqz v1, :cond_0

    .line 45
    .line 46
    check-cast v0, Lcom/miui/maml/elements/ScreenElement;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .line 48
    return-object v0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    const-string v2, "fail find IPbrCreator."

    .line 56
    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    const-string v1, "ScreenElementFactory"

    .line 68
    .line 69
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElementFactory;->mPbrCreator:Lcom/miui/maml/elements/filament/PhysicallyBasedRenderingElement$IPbrCreator;

    .line 73
    .line 74
    if-nez v0, :cond_1

    .line 75
    .line 76
    const/4 p1, 0x0

    .line 77
    goto :goto_0

    .line 78
    :cond_1
    invoke-interface {v0, p1, p2}, Lcom/miui/maml/elements/filament/PhysicallyBasedRenderingElement$IPbrCreator;->createRealPbrElement(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)Lcom/miui/maml/elements/filament/PhysicallyBasedRenderingElement;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    :goto_0
    return-object p1
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


# virtual methods
.method public createInstance(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)Lcom/miui/maml/elements/ScreenElement;
    .locals 2

    .line 1
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :try_start_0
    const-string v1, "Image"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    new-instance v0, Lcom/miui/maml/elements/ImageScreenElement;

    .line 14
    .line 15
    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/ImageScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 16
    .line 17
    .line 18
    return-object v0

    .line 19
    :cond_0
    const-string v1, "Graphics"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    new-instance v0, Lcom/miui/maml/elements/GraphicsElement;

    .line 28
    .line 29
    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/GraphicsElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 30
    .line 31
    .line 32
    return-object v0

    .line 33
    :cond_1
    const-string v1, "Time"

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_2

    .line 40
    .line 41
    new-instance v0, Lcom/miui/maml/elements/TimepanelScreenElement;

    .line 42
    .line 43
    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/TimepanelScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 44
    .line 45
    .line 46
    return-object v0

    .line 47
    :cond_2
    const-string v1, "ImageNumber"

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-nez v1, :cond_28

    .line 54
    .line 55
    const-string v1, "ImageChars"

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_3

    .line 62
    .line 63
    goto/16 :goto_1

    .line 64
    .line 65
    :cond_3
    const-string v1, "Text"

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-eqz v1, :cond_4

    .line 72
    .line 73
    new-instance v0, Lcom/miui/maml/elements/TextScreenElement;

    .line 74
    .line 75
    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/TextScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 76
    .line 77
    .line 78
    return-object v0

    .line 79
    :cond_4
    const-string v1, "DateTime"

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    if-eqz v1, :cond_5

    .line 86
    .line 87
    new-instance v0, Lcom/miui/maml/elements/DateTimeScreenElement;

    .line 88
    .line 89
    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/DateTimeScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 90
    .line 91
    .line 92
    return-object v0

    .line 93
    :cond_5
    const-string v1, "Button"

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-eqz v1, :cond_6

    .line 100
    .line 101
    new-instance v0, Lcom/miui/maml/elements/ButtonScreenElement;

    .line 102
    .line 103
    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/ButtonScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 104
    .line 105
    .line 106
    return-object v0

    .line 107
    :cond_6
    const-string v1, "MusicControl"

    .line 108
    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    if-eqz v1, :cond_7

    .line 114
    .line 115
    new-instance v0, Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 116
    .line 117
    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/MusicControlScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 118
    .line 119
    .line 120
    return-object v0

    .line 121
    :cond_7
    const-string v1, "ElementGroup"

    .line 122
    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    if-nez v1, :cond_27

    .line 128
    .line 129
    const-string v1, "Group"

    .line 130
    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    if-eqz v1, :cond_8

    .line 136
    .line 137
    goto/16 :goto_0

    .line 138
    .line 139
    :cond_8
    const-string v1, "Var"

    .line 140
    .line 141
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    if-eqz v1, :cond_9

    .line 146
    .line 147
    new-instance v0, Lcom/miui/maml/elements/VariableElement;

    .line 148
    .line 149
    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/VariableElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 150
    .line 151
    .line 152
    return-object v0

    .line 153
    :cond_9
    const-string v1, "VarArray"

    .line 154
    .line 155
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 156
    .line 157
    .line 158
    move-result v1

    .line 159
    if-eqz v1, :cond_a

    .line 160
    .line 161
    new-instance v0, Lcom/miui/maml/elements/VariableArrayElement;

    .line 162
    .line 163
    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/VariableArrayElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 164
    .line 165
    .line 166
    return-object v0

    .line 167
    :cond_a
    const-string v1, "AutoScaleGroup"

    .line 168
    .line 169
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 170
    .line 171
    .line 172
    move-result v1

    .line 173
    if-eqz v1, :cond_b

    .line 174
    .line 175
    new-instance v0, Lcom/miui/maml/elements/AutoScaleElementGroup;

    .line 176
    .line 177
    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/AutoScaleElementGroup;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 178
    .line 179
    .line 180
    return-object v0

    .line 181
    :cond_b
    const-string v1, "SpectrumVisualizer"

    .line 182
    .line 183
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 184
    .line 185
    .line 186
    move-result v1

    .line 187
    if-eqz v1, :cond_c

    .line 188
    .line 189
    new-instance v0, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;

    .line 190
    .line 191
    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 192
    .line 193
    .line 194
    return-object v0

    .line 195
    :cond_c
    const-string v1, "Slider"

    .line 196
    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 198
    .line 199
    .line 200
    move-result v1

    .line 201
    if-eqz v1, :cond_d

    .line 202
    .line 203
    new-instance v0, Lcom/miui/maml/elements/AdvancedSlider;

    .line 204
    .line 205
    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/AdvancedSlider;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 206
    .line 207
    .line 208
    return-object v0

    .line 209
    :cond_d
    const-string v1, "FramerateController"

    .line 210
    .line 211
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 212
    .line 213
    .line 214
    move-result v1

    .line 215
    if-eqz v1, :cond_e

    .line 216
    .line 217
    new-instance v0, Lcom/miui/maml/elements/FramerateController;

    .line 218
    .line 219
    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/FramerateController;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 220
    .line 221
    .line 222
    return-object v0

    .line 223
    :cond_e
    const-string v1, "FolmeConfig"

    .line 224
    .line 225
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 226
    .line 227
    .line 228
    move-result v1

    .line 229
    if-eqz v1, :cond_f

    .line 230
    .line 231
    new-instance v0, Lcom/miui/maml/elements/FolmeConfigElement;

    .line 232
    .line 233
    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/FolmeConfigElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 234
    .line 235
    .line 236
    return-object v0

    .line 237
    :cond_f
    const-string v1, "FolmeState"

    .line 238
    .line 239
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 240
    .line 241
    .line 242
    move-result v1

    .line 243
    if-eqz v1, :cond_10

    .line 244
    .line 245
    new-instance v0, Lcom/miui/maml/elements/FolmeStateElement;

    .line 246
    .line 247
    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/FolmeStateElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 248
    .line 249
    .line 250
    return-object v0

    .line 251
    :cond_10
    const-string v1, "VirtualScreen"

    .line 252
    .line 253
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 254
    .line 255
    .line 256
    move-result v1

    .line 257
    if-eqz v1, :cond_11

    .line 258
    .line 259
    new-instance v0, Lcom/miui/maml/elements/VirtualScreen;

    .line 260
    .line 261
    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/VirtualScreen;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 262
    .line 263
    .line 264
    return-object v0

    .line 265
    :cond_11
    const-string v1, "VirtualElement"

    .line 266
    .line 267
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 268
    .line 269
    .line 270
    move-result v1

    .line 271
    if-eqz v1, :cond_12

    .line 272
    .line 273
    new-instance v0, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;

    .line 274
    .line 275
    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 276
    .line 277
    .line 278
    return-object v0

    .line 279
    :cond_12
    const-string v1, "Line"

    .line 280
    .line 281
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 282
    .line 283
    .line 284
    move-result v1

    .line 285
    if-eqz v1, :cond_13

    .line 286
    .line 287
    new-instance v0, Lcom/miui/maml/elements/LineScreenElement;

    .line 288
    .line 289
    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/LineScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 290
    .line 291
    .line 292
    return-object v0

    .line 293
    :cond_13
    const-string v1, "Rectangle"

    .line 294
    .line 295
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 296
    .line 297
    .line 298
    move-result v1

    .line 299
    if-eqz v1, :cond_14

    .line 300
    .line 301
    new-instance v0, Lcom/miui/maml/elements/RectangleScreenElement;

    .line 302
    .line 303
    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/RectangleScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 304
    .line 305
    .line 306
    return-object v0

    .line 307
    :cond_14
    const-string v1, "Ellipse"

    .line 308
    .line 309
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 310
    .line 311
    .line 312
    move-result v1

    .line 313
    if-eqz v1, :cond_15

    .line 314
    .line 315
    new-instance v0, Lcom/miui/maml/elements/EllipseScreenElement;

    .line 316
    .line 317
    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/EllipseScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 318
    .line 319
    .line 320
    return-object v0

    .line 321
    :cond_15
    const-string v1, "Circle"

    .line 322
    .line 323
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 324
    .line 325
    .line 326
    move-result v1

    .line 327
    if-eqz v1, :cond_16

    .line 328
    .line 329
    new-instance v0, Lcom/miui/maml/elements/CircleScreenElement;

    .line 330
    .line 331
    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/CircleScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 332
    .line 333
    .line 334
    return-object v0

    .line 335
    :cond_16
    const-string v1, "Arc"

    .line 336
    .line 337
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 338
    .line 339
    .line 340
    move-result v1

    .line 341
    if-eqz v1, :cond_17

    .line 342
    .line 343
    new-instance v0, Lcom/miui/maml/elements/ArcScreenElement;

    .line 344
    .line 345
    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/ArcScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 346
    .line 347
    .line 348
    return-object v0

    .line 349
    :cond_17
    const-string v1, "Curve"

    .line 350
    .line 351
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 352
    .line 353
    .line 354
    move-result v1

    .line 355
    if-eqz v1, :cond_18

    .line 356
    .line 357
    new-instance v0, Lcom/miui/maml/elements/CurveScreenElement;

    .line 358
    .line 359
    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/CurveScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 360
    .line 361
    .line 362
    return-object v0

    .line 363
    :cond_18
    const-string v1, "List"

    .line 364
    .line 365
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 366
    .line 367
    .line 368
    move-result v1

    .line 369
    if-eqz v1, :cond_19

    .line 370
    .line 371
    new-instance v0, Lcom/miui/maml/elements/ListScreenElement;

    .line 372
    .line 373
    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/ListScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 374
    .line 375
    .line 376
    return-object v0

    .line 377
    :cond_19
    const-string v1, "Paint"

    .line 378
    .line 379
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 380
    .line 381
    .line 382
    move-result v1

    .line 383
    if-eqz v1, :cond_1a

    .line 384
    .line 385
    new-instance v0, Lcom/miui/maml/elements/PaintScreenElement;

    .line 386
    .line 387
    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/PaintScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 388
    .line 389
    .line 390
    return-object v0

    .line 391
    :cond_1a
    const-string v1, "Mirror"

    .line 392
    .line 393
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 394
    .line 395
    .line 396
    move-result v1

    .line 397
    if-eqz v1, :cond_1b

    .line 398
    .line 399
    new-instance v0, Lcom/miui/maml/elements/MirrorScreenElement;

    .line 400
    .line 401
    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/MirrorScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 402
    .line 403
    .line 404
    return-object v0

    .line 405
    :cond_1b
    const-string v1, "Window"

    .line 406
    .line 407
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 408
    .line 409
    .line 410
    move-result v1

    .line 411
    if-eqz v1, :cond_1c

    .line 412
    .line 413
    new-instance v0, Lcom/miui/maml/elements/WindowScreenElement;

    .line 414
    .line 415
    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/WindowScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 416
    .line 417
    .line 418
    return-object v0

    .line 419
    :cond_1c
    const-string v1, "WebView"

    .line 420
    .line 421
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 422
    .line 423
    .line 424
    move-result v1

    .line 425
    if-eqz v1, :cond_1d

    .line 426
    .line 427
    new-instance v0, Lcom/miui/maml/elements/WebViewScreenElement;

    .line 428
    .line 429
    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/WebViewScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 430
    .line 431
    .line 432
    return-object v0

    .line 433
    :cond_1d
    const-string v1, "Layer"

    .line 434
    .line 435
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 436
    .line 437
    .line 438
    move-result v1

    .line 439
    if-eqz v1, :cond_1e

    .line 440
    .line 441
    new-instance v0, Lcom/miui/maml/elements/LayerScreenElement;

    .line 442
    .line 443
    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/LayerScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 444
    .line 445
    .line 446
    return-object v0

    .line 447
    :cond_1e
    const-string v1, "GLLayer"

    .line 448
    .line 449
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 450
    .line 451
    .line 452
    move-result v1

    .line 453
    if-eqz v1, :cond_1f

    .line 454
    .line 455
    new-instance v0, Lcom/miui/maml/elements/GLLayerScreenElement;

    .line 456
    .line 457
    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/GLLayerScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 458
    .line 459
    .line 460
    return-object v0

    .line 461
    :cond_1f
    const-string v1, "Array"

    .line 462
    .line 463
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 464
    .line 465
    .line 466
    move-result v1

    .line 467
    if-eqz v1, :cond_20

    .line 468
    .line 469
    new-instance v0, Lcom/miui/maml/elements/ScreenElementArray;

    .line 470
    .line 471
    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/ScreenElementArray;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 472
    .line 473
    .line 474
    return-object v0

    .line 475
    :cond_20
    const-string v1, "CanvasDrawer"

    .line 476
    .line 477
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 478
    .line 479
    .line 480
    move-result v1

    .line 481
    if-eqz v1, :cond_21

    .line 482
    .line 483
    new-instance v0, Lcom/miui/maml/elements/CanvasDrawerElement;

    .line 484
    .line 485
    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/CanvasDrawerElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 486
    .line 487
    .line 488
    return-object v0

    .line 489
    :cond_21
    const-string v1, "Function"

    .line 490
    .line 491
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 492
    .line 493
    .line 494
    move-result v1

    .line 495
    if-eqz v1, :cond_22

    .line 496
    .line 497
    new-instance v0, Lcom/miui/maml/elements/FunctionElement;

    .line 498
    .line 499
    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/FunctionElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 500
    .line 501
    .line 502
    return-object v0

    .line 503
    :cond_22
    const-string v1, "AnimConfig"

    .line 504
    .line 505
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 506
    .line 507
    .line 508
    move-result v1

    .line 509
    if-eqz v1, :cond_23

    .line 510
    .line 511
    new-instance v0, Lcom/miui/maml/elements/AnimConfigElement;

    .line 512
    .line 513
    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/AnimConfigElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 514
    .line 515
    .line 516
    return-object v0

    .line 517
    :cond_23
    const-string v1, "AnimState"

    .line 518
    .line 519
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 520
    .line 521
    .line 522
    move-result v1

    .line 523
    if-eqz v1, :cond_24

    .line 524
    .line 525
    new-instance v0, Lcom/miui/maml/elements/AnimStateElement;

    .line 526
    .line 527
    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/AnimStateElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 528
    .line 529
    .line 530
    return-object v0

    .line 531
    :cond_24
    const-string v1, "Video"

    .line 532
    .line 533
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 534
    .line 535
    .line 536
    move-result v1

    .line 537
    if-eqz v1, :cond_25

    .line 538
    .line 539
    new-instance v0, Lcom/miui/maml/elements/video/VideoElement;

    .line 540
    .line 541
    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/video/VideoElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 542
    .line 543
    .line 544
    return-object v0

    .line 545
    :cond_25
    const-string v1, "Pbr"

    .line 546
    .line 547
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 548
    .line 549
    .line 550
    move-result v0

    .line 551
    if-eqz v0, :cond_26

    .line 552
    .line 553
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElementFactory;->createPbrElement(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)Lcom/miui/maml/elements/ScreenElement;

    .line 554
    .line 555
    .line 556
    move-result-object p1

    .line 557
    return-object p1

    .line 558
    :cond_26
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElementFactory;->mFactoryCallback:Lcom/miui/maml/elements/ScreenElementFactory$FactoryCallback;

    .line 559
    .line 560
    if-eqz v0, :cond_29

    .line 561
    .line 562
    invoke-interface {v0, p1, p2}, Lcom/miui/maml/elements/ScreenElementFactory$FactoryCallback;->onCreateInstance(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)Lcom/miui/maml/elements/ScreenElement;

    .line 563
    .line 564
    .line 565
    move-result-object p1

    .line 566
    return-object p1

    .line 567
    :cond_27
    :goto_0
    new-instance v0, Lcom/miui/maml/elements/ElementGroup;

    .line 568
    .line 569
    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 570
    .line 571
    .line 572
    return-object v0

    .line 573
    :cond_28
    :goto_1
    new-instance v0, Lcom/miui/maml/elements/ImageNumberScreenElement;

    .line 574
    .line 575
    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/ImageNumberScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 576
    .line 577
    .line 578
    return-object v0

    .line 579
    :catch_0
    move-exception p1

    .line 580
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 581
    .line 582
    .line 583
    new-instance p2, Ljava/lang/StringBuilder;

    .line 584
    .line 585
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 586
    .line 587
    .line 588
    const-string v0, "fail to create element."

    .line 589
    .line 590
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    .line 592
    .line 593
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 594
    .line 595
    .line 596
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 597
    .line 598
    .line 599
    move-result-object p1

    .line 600
    const-string p2, "ScreenElementFactory"

    .line 601
    .line 602
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    .line 604
    .line 605
    :cond_29
    const/4 p1, 0x0

    .line 606
    return-object p1
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
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
.end method

.method public getCallback()Lcom/miui/maml/elements/ScreenElementFactory$FactoryCallback;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElementFactory;->mFactoryCallback:Lcom/miui/maml/elements/ScreenElementFactory$FactoryCallback;

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

.method public setCallback(Lcom/miui/maml/elements/ScreenElementFactory$FactoryCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/ScreenElementFactory;->mFactoryCallback:Lcom/miui/maml/elements/ScreenElementFactory$FactoryCallback;

    .line 2
    .line 3
    return-void
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
