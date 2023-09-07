.class public Lcom/miui/calendar/view/CustomBulletSpan;
.super Ljava/lang/Object;
.source "CustomBulletSpan.java"

# interfaces
.implements Landroid/text/style/LeadingMarginSpan;
.implements Landroid/text/ParcelableSpan;


# static fields
.field private static final STANDARD_BULLET_RADIUS:I = 0x4

.field private static final STANDARD_COLOR:I = 0x0

.field public static final STANDARD_GAP_WIDTH:I = 0x2


# instance fields
.field private mBulletPath:Landroid/graphics/Path;

.field private final mBulletRadius:I

.field private final mColor:I

.field private final mGapWidth:I

.field private final mWantColor:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x4

    .line 1
    invoke-direct {p0, v0, v1, v1, v2}, Lcom/miui/calendar/view/CustomBulletSpan;-><init>(IIZI)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x4

    .line 2
    invoke-direct {p0, p1, v0, v0, v1}, Lcom/miui/calendar/view/CustomBulletSpan;-><init>(IIZI)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x4

    .line 3
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/miui/calendar/view/CustomBulletSpan;-><init>(IIZI)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    const/4 v0, 0x1

    .line 4
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/miui/calendar/view/CustomBulletSpan;-><init>(IIZI)V

    return-void
.end method

.method private constructor <init>(IIZI)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/miui/calendar/view/CustomBulletSpan;->mBulletPath:Landroid/graphics/Path;

    .line 7
    iput p1, p0, Lcom/miui/calendar/view/CustomBulletSpan;->mGapWidth:I

    .line 8
    iput p4, p0, Lcom/miui/calendar/view/CustomBulletSpan;->mBulletRadius:I

    .line 9
    iput p2, p0, Lcom/miui/calendar/view/CustomBulletSpan;->mColor:I

    .line 10
    iput-boolean p3, p0, Lcom/miui/calendar/view/CustomBulletSpan;->mWantColor:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/miui/calendar/view/CustomBulletSpan;->mBulletPath:Landroid/graphics/Path;

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/calendar/view/CustomBulletSpan;->mGapWidth:I

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/miui/calendar/view/CustomBulletSpan;->mWantColor:Z

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/calendar/view/CustomBulletSpan;->mColor:I

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/miui/calendar/view/CustomBulletSpan;->mBulletRadius:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V
    .locals 0

    .line 1
    check-cast p8, Landroid/text/Spanned;

    invoke-interface {p8, p0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result p6

    if-ne p6, p9, :cond_5

    .line 2
    invoke-virtual {p2}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object p6

    const/4 p8, 0x0

    .line 3
    iget-boolean p10, p0, Lcom/miui/calendar/view/CustomBulletSpan;->mWantColor:Z

    if-eqz p10, :cond_0

    .line 4
    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result p8

    .line 5
    iget p10, p0, Lcom/miui/calendar/view/CustomBulletSpan;->mColor:I

    invoke-virtual {p2, p10}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    :cond_0
    sget-object p10, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p10}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    if-eqz p12, :cond_1

    .line 7
    invoke-virtual {p12, p9}, Landroid/text/Layout;->getLineForOffset(I)I

    :cond_1
    add-int/2addr p5, p7

    int-to-float p5, p5

    const/high16 p7, 0x40000000    # 2.0f

    div-float/2addr p5, p7

    .line 8
    iget p7, p0, Lcom/miui/calendar/view/CustomBulletSpan;->mBulletRadius:I

    mul-int/2addr p4, p7

    add-int/2addr p3, p4

    int-to-float p3, p3

    .line 9
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result p4

    if-eqz p4, :cond_3

    .line 10
    iget-object p4, p0, Lcom/miui/calendar/view/CustomBulletSpan;->mBulletPath:Landroid/graphics/Path;

    if-nez p4, :cond_2

    .line 11
    new-instance p4, Landroid/graphics/Path;

    invoke-direct {p4}, Landroid/graphics/Path;-><init>()V

    iput-object p4, p0, Lcom/miui/calendar/view/CustomBulletSpan;->mBulletPath:Landroid/graphics/Path;

    .line 12
    iget p7, p0, Lcom/miui/calendar/view/CustomBulletSpan;->mBulletRadius:I

    int-to-float p7, p7

    sget-object p9, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    const/4 p10, 0x0

    invoke-virtual {p4, p10, p10, p7, p9}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 13
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 14
    invoke-virtual {p1, p3, p5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 15
    iget-object p3, p0, Lcom/miui/calendar/view/CustomBulletSpan;->mBulletPath:Landroid/graphics/Path;

    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 16
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 17
    :cond_3
    iget p4, p0, Lcom/miui/calendar/view/CustomBulletSpan;->mBulletRadius:I

    int-to-float p4, p4

    invoke-virtual {p1, p3, p5, p4, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 18
    :goto_0
    iget-boolean p1, p0, Lcom/miui/calendar/view/CustomBulletSpan;->mWantColor:Z

    if-eqz p1, :cond_4

    .line 19
    invoke-virtual {p2, p8}, Landroid/graphics/Paint;->setColor(I)V

    .line 20
    :cond_4
    invoke-virtual {p2, p6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_5
    return-void
.end method

.method public getBulletRadius()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/miui/calendar/view/CustomBulletSpan;->mBulletRadius:I

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

.method public getColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/miui/calendar/view/CustomBulletSpan;->mColor:I

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

.method public getGapWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/miui/calendar/view/CustomBulletSpan;->mGapWidth:I

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

.method public getLeadingMargin(Z)I
    .locals 1

    .line 1
    iget p1, p0, Lcom/miui/calendar/view/CustomBulletSpan;->mBulletRadius:I

    .line 2
    .line 3
    mul-int/lit8 p1, p1, 0x2

    .line 4
    .line 5
    iget v0, p0, Lcom/miui/calendar/view/CustomBulletSpan;->mGapWidth:I

    .line 6
    .line 7
    add-int/2addr p1, v0

    .line 8
    return p1
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

.method public getSpanTypeId()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/miui/calendar/view/CustomBulletSpan;->getSpanTypeIdInternal()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
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

.method public getSpanTypeIdInternal()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/miui/calendar/view/CustomBulletSpan;->writeToParcelInternal(Landroid/os/Parcel;I)V

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

.method public writeToParcelInternal(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Lcom/miui/calendar/view/CustomBulletSpan;->mGapWidth:I

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget-boolean p2, p0, Lcom/miui/calendar/view/CustomBulletSpan;->mWantColor:Z

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    iget p2, p0, Lcom/miui/calendar/view/CustomBulletSpan;->mColor:I

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    .line 15
    .line 16
    iget p2, p0, Lcom/miui/calendar/view/CustomBulletSpan;->mBulletRadius:I

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    .line 20
    .line 21
    return-void
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
