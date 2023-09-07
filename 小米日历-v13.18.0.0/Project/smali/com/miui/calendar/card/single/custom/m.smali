.class public final synthetic Lcom/miui/calendar/card/single/custom/m;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/miui/calendar/card/schema/CustomCardItemSchema;

.field public final synthetic b:Lcom/miui/calendar/card/single/custom/HealthSingleCard;

.field public final synthetic c:I

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcom/miui/calendar/card/schema/CustomCardItemSchema;Lcom/miui/calendar/card/single/custom/HealthSingleCard;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/calendar/card/single/custom/m;->a:Lcom/miui/calendar/card/schema/CustomCardItemSchema;

    iput-object p2, p0, Lcom/miui/calendar/card/single/custom/m;->b:Lcom/miui/calendar/card/single/custom/HealthSingleCard;

    iput p3, p0, Lcom/miui/calendar/card/single/custom/m;->c:I

    iput p4, p0, Lcom/miui/calendar/card/single/custom/m;->d:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/calendar/card/single/custom/m;->a:Lcom/miui/calendar/card/schema/CustomCardItemSchema;

    iget-object v1, p0, Lcom/miui/calendar/card/single/custom/m;->b:Lcom/miui/calendar/card/single/custom/HealthSingleCard;

    iget v2, p0, Lcom/miui/calendar/card/single/custom/m;->c:I

    iget v3, p0, Lcom/miui/calendar/card/single/custom/m;->d:I

    invoke-static {v0, v1, v2, v3, p1}, Lcom/miui/calendar/card/single/custom/HealthSingleCard;->E(Lcom/miui/calendar/card/schema/CustomCardItemSchema;Lcom/miui/calendar/card/single/custom/HealthSingleCard;IILandroid/view/View;)V

    return-void
.end method
