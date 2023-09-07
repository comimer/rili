.class public final synthetic Lcom/miui/calendar/card/single/custom/e;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/miui/calendar/view/DynamicLinearLayout$b;


# instance fields
.field public final synthetic a:Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard;

.field public final synthetic b:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/calendar/card/single/custom/e;->a:Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard;

    iput-object p2, p0, Lcom/miui/calendar/card/single/custom/e;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/calendar/card/single/custom/e;->a:Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard;

    iget-object v1, p0, Lcom/miui/calendar/card/single/custom/e;->b:Ljava/util/ArrayList;

    invoke-static {v0, v1, p1}, Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard;->E(Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard;Ljava/util/ArrayList;I)V

    return-void
.end method
