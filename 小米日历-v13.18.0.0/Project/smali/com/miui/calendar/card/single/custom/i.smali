.class public final synthetic Lcom/miui/calendar/card/single/custom/i;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/miui/calendar/card/schema/CustomCardItemSchema;

.field public final synthetic b:Lcom/miui/calendar/card/single/custom/FilmSingleCard;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/miui/calendar/card/schema/CustomCardItemSchema;Lcom/miui/calendar/card/single/custom/FilmSingleCard;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/calendar/card/single/custom/i;->a:Lcom/miui/calendar/card/schema/CustomCardItemSchema;

    iput-object p2, p0, Lcom/miui/calendar/card/single/custom/i;->b:Lcom/miui/calendar/card/single/custom/FilmSingleCard;

    iput p3, p0, Lcom/miui/calendar/card/single/custom/i;->c:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/calendar/card/single/custom/i;->a:Lcom/miui/calendar/card/schema/CustomCardItemSchema;

    iget-object v1, p0, Lcom/miui/calendar/card/single/custom/i;->b:Lcom/miui/calendar/card/single/custom/FilmSingleCard;

    iget v2, p0, Lcom/miui/calendar/card/single/custom/i;->c:I

    invoke-static {v0, v1, v2, p1}, Lcom/miui/calendar/card/single/custom/FilmSingleCard;->E(Lcom/miui/calendar/card/schema/CustomCardItemSchema;Lcom/miui/calendar/card/single/custom/FilmSingleCard;ILandroid/view/View;)V

    return-void
.end method
