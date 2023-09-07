.class public final synthetic Lcom/miui/calendar/util/u0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/text/InputFilter;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(ILandroid/content/Context;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/miui/calendar/util/u0;->a:I

    iput-object p2, p0, Lcom/miui/calendar/util/u0;->b:Landroid/content/Context;

    iput p3, p0, Lcom/miui/calendar/util/u0;->c:I

    return-void
.end method


# virtual methods
.method public final filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 9

    iget v0, p0, Lcom/miui/calendar/util/u0;->a:I

    iget-object v1, p0, Lcom/miui/calendar/util/u0;->b:Landroid/content/Context;

    iget v2, p0, Lcom/miui/calendar/util/u0;->c:I

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    move v8, p6

    invoke-static/range {v0 .. v8}, Lcom/miui/calendar/util/x0;->c(ILandroid/content/Context;ILjava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method
