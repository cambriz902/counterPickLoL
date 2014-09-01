//
//  SelectCounterPickChampion.m
//  counterPickLoL
//
//  Created by christian ambriz on 8/31/14.
//  Copyright (c) 2014 christian ambriz. All rights reserved.
//

#import "SelectCounterPickChampion.h"
#import "CustomCell.h"

@interface SelectCounterPickChampion ()
@property (strong, nonatomic) IBOutlet UICollectionView *collectionView;

@end

@implementation SelectCounterPickChampion

- (id)initWithCollectionViewLayout:(UICollectionViewLayout *)layout{
    if (self) {
        // additional setup here if required.
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.storyboard instantiateViewControllerWithIdentifier:@"SelectCounterPickChampion"];
    [self initializeChampionList];
    self.title = @"Counter Pick";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return self.championList.count;
}

-(UICollectionViewCell *) collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    NSDictionary *champion = self.championList[indexPath.item];
    CustomCell *customCell = [collectionView dequeueReusableCellWithReuseIdentifier:@"myCell" forIndexPath:indexPath];
    customCell.championNameLabel.text = [NSString stringWithString:champion[@"championName"]];
    customCell.championPictureImageView.image = [UIImage imageNamed:champion[@"imageName"]];
    return customCell;
}

-(void) initializeChampionList
{
    self.championList = @[
                          @{@"imageName": @"Aatrox.png",@"championName":@"Aatrox"},
                          @{@"imageName": @"Ahri.png",@"championName":@"Ahri"},
                          @{@"imageName": @"Akali.png",@"championName":@"Akali"},
                          @{@"imageName": @"Alistar.png",@"championName":@"Alistar"},
                          @{@"imageName": @"Amumu.png",@"championName":@"Amumu"},
                          @{@"imageName": @"Anivia.png",@"championName":@"Anivia"},
                          @{@"imageName": @"Annie.png",@"championName":@"Annie"},
                          @{@"imageName": @"Ashe.png",@"championName":@"Ashe"},
                          @{@"imageName": @"Blitzcrank.png",@"championName":@"Blitzcrank"},
                          @{@"imageName": @"Brand.png",@"championName":@"Brand"},
                          @{@"imageName": @"Braum.png",@"championName":@"Braum"},
                          @{@"imageName": @"Caitlyn.png",@"championName":@"Caitlyn"},
                          @{@"imageName": @"Cassiopeia.png",@"championName":@"Cassiopeia"},
                          @{@"imageName": @"Chogath.png",@"championName":@"Chogath"},
                          @{@"imageName": @"Corki.png",@"championName":@"Corki"},
                          @{@"imageName": @"Darius.png",@"championName":@"Darius"},
                          @{@"imageName": @"Diana.png",@"championName":@"Diana"},
                          @{@"imageName": @"Draven.png",@"championName":@"Draven"},
                          @{@"imageName": @"DrMundo.png",@"championName":@"Dr. Mundo"},
                          @{@"imageName": @"Elise.png",@"championName":@"Elise"},
                          @{@"imageName": @"Evelynn.png",@"championName":@"Evelynn"},
                          @{@"imageName": @"Ezreal.png",@"championName":@"Ezreal"},
                          @{@"imageName": @"Fiddlesticks.png",@"championName":@"Fiddlesticks"},
                          @{@"imageName": @"Fiora.png",@"championName":@"Fiora"},
                          @{@"imageName": @"Fizz.png",@"championName":@"Fizz"},
                          @{@"imageName": @"Galio.png",@"championName":@"Galio"},
                          @{@"imageName": @"Gangplank.png",@"championName":@"Gangplank"},
                          @{@"imageName": @"Garen.png",@"championName":@"Garen"},
                          @{@"imageName": @"Gnar.png",@"championName":@"Gnar"},
                          @{@"imageName": @"Gragas.png",@"championName":@"Gragas"},
                          @{@"imageName": @"Graves.png",@"championName":@"Graves"},
                          @{@"imageName": @"Hecarim.png",@"championName":@"Hecarim"},
                          @{@"imageName": @"Heimerdinger.png",@"championName":@"Heimerdinger"},
                          @{@"imageName": @"Irelia.png",@"championName":@"Irelia"},
                          @{@"imageName": @"Janna.png",@"championName":@"Janna"},
                          @{@"imageName": @"JarvanIV.png",@"championName":@"Jarvan IV"},
                          @{@"imageName": @"Jax.png",@"championName":@"Jax"},
                          @{@"imageName": @"Jayce.png",@"championName":@"Jayce"},
                          @{@"imageName": @"Jinx.png",@"championName":@"Jinx"},
                          @{@"imageName": @"Karma.png",@"championName":@"Karma"},
                          @{@"imageName": @"Karthus.png",@"championName":@"Karthus"},
                          @{@"imageName": @"Kassadin.png",@"championName":@"Kassadin"},
                          @{@"imageName": @"Katarina.png",@"championName":@"Katarina"},
                          @{@"imageName": @"Kayle.png",@"championName":@"Kayle"},
                          @{@"imageName": @"Kennen.png",@"championName":@"Kennen"},
                          @{@"imageName": @"Khazix.png",@"championName":@"Kha'Zix"},
                          @{@"imageName": @"KogMaw.png",@"championName":@"Kog'Maw"},
                          @{@"imageName": @"Leblanc.png",@"championName":@"Leblanc"},
                          @{@"imageName": @"LeeSin.png",@"championName":@"Lee Sin"},
                          @{@"imageName": @"Leona.png",@"championName":@"Leona"},
                          @{@"imageName": @"Lissandra.png",@"championName":@"Lissandra"},
                          @{@"imageName": @"Lucian.png",@"championName":@"Lucian"},
                          @{@"imageName": @"Lulu.png",@"championName":@"Lulu"},
                          @{@"imageName": @"Lux.png",@"championName":@"Lux"},
                          @{@"imageName": @"Malphite.png",@"championName":@"Malphite"},
                          @{@"imageName": @"Malzahar.png",@"championName":@"Malzahar"},
                          @{@"imageName": @"Maokai.png",@"championName":@"Maokai"},
                          @{@"imageName": @"MasterYi.png",@"championName":@"Master Yi"},
                          @{@"imageName": @"MissFortune.png",@"championName":@"Miss Fortune"},
                          @{@"imageName": @"MonkeyKing.png",@"championName":@"Wukong"},
                          @{@"imageName": @"Mordekaiser.png",@"championName":@"Mordekaiser"},
                          @{@"imageName": @"Morgana.png",@"championName":@"Morgana"},
                          @{@"imageName": @"Nami.png",@"championName":@"Nami"},
                          @{@"imageName": @"Nasus.png",@"championName":@"Nasus"},
                          @{@"imageName": @"Nautilus.png",@"championName":@"Nautilus"},
                          @{@"imageName": @"Nidalee.png",@"championName":@"Nidalee"},
                          @{@"imageName": @"Nocturne.png",@"championName":@"Nocturne"},
                          @{@"imageName": @"Nunu.png",@"championName":@"Nunu"},
                          @{@"imageName": @"Olaf.png",@"championName":@"Olaf"},
                          @{@"imageName": @"Orianna.png",@"championName":@"Orianna"},
                          @{@"imageName": @"Pantheon.png",@"championName":@"Pantheon"},
                          @{@"imageName": @"Poppy.png",@"championName":@"Poppy"},
                          @{@"imageName": @"Quinn.png",@"championName":@"Quinn"},
                          @{@"imageName": @"Rammus.png",@"championName":@"Rammus"},
                          @{@"imageName": @"Renekton.png",@"championName":@"Renekton"},
                          @{@"imageName": @"Rengar.png",@"championName":@"Rengar"},
                          @{@"imageName": @"Riven.png",@"championName":@"Riven"},
                          @{@"imageName": @"Rumble.png",@"championName":@"Rumble"},
                          @{@"imageName": @"Ryze.png",@"championName":@"Ryze"},
                          @{@"imageName": @"Sejuani.png",@"championName":@"Sejuani"},
                          @{@"imageName": @"Shaco.png",@"championName":@"Shaco"},
                          @{@"imageName": @"Shen.png",@"championName":@"Shen"},
                          @{@"imageName": @"Shyvana.png",@"championName":@"Shyvana"},
                          @{@"imageName": @"Singed.png",@"championName":@"Singed"},
                          @{@"imageName": @"Sion.png",@"championName":@"Sion"},
                          @{@"imageName": @"Sivir.png",@"championName":@"Sivir"},
                          @{@"imageName": @"Skarner.png",@"championName":@"Skarner"},
                          @{@"imageName": @"Sona.png",@"championName":@"Sona"},
                          @{@"imageName": @"Soraka.png",@"championName":@"Soraka"},
                          @{@"imageName": @"Swain.png",@"championName":@"Swain"},
                          @{@"imageName": @"Syndra.png",@"championName":@"Syndra"},
                          @{@"imageName": @"Talon.png",@"championName":@"Talon"},
                          @{@"imageName": @"Taric.png",@"championName":@"Taric"},
                          @{@"imageName": @"Teemo.png",@"championName":@"Teemo"},
                          @{@"imageName": @"Thresh.png",@"championName":@"Thresh"},
                          @{@"imageName": @"Tristana.png",@"championName":@"Tristana"},
                          @{@"imageName": @"Trundle.png",@"championName":@"Trundle"},
                          @{@"imageName": @"Tryndamere.png",@"championName":@"Tryndamere"},
                          @{@"imageName": @"TwistedFate.png",@"championName":@"Twisted Fate"},
                          @{@"imageName": @"Twitch.png",@"championName":@"Twitch"},
                          @{@"imageName": @"Udyr.png",@"championName":@"Udyr"},
                          @{@"imageName": @"Urgot.png",@"championName":@"Urgot"},
                          @{@"imageName": @"Varus.png",@"championName":@"Varus"},
                          @{@"imageName": @"Vayne.png",@"championName":@"Vayne"},
                          @{@"imageName": @"Veigar.png",@"championName":@"Veigar"},
                          @{@"imageName": @"VelKoz.png",@"championName":@"Vel'Koz"},
                          @{@"imageName": @"Vi.png",@"championName":@"Vi"},
                          @{@"imageName": @"Viktor.png",@"championName":@"Viktor"},
                          @{@"imageName": @"Vladimir.png",@"championName":@"Vladimir"},
                          @{@"imageName": @"Volibear.png",@"championName":@"Volibear"},
                          @{@"imageName": @"Warwick.png",@"championName":@"Warwick"},
                          @{@"imageName": @"Xerath.png",@"championName":@"Xerath"},
                          @{@"imageName": @"XinZhao.png",@"championName":@"Xin'Zhao"},
                          @{@"imageName": @"Yasuo.png",@"championName":@"Yasuo"},
                          @{@"imageName": @"Yorick.png",@"championName":@"Yorick"},
                          @{@"imageName": @"Zac.png",@"championName":@"Zac"},
                          @{@"imageName": @"Zed.png",@"championName":@"Zed"},
                          @{@"imageName": @"Ziggs.png",@"championName":@"Ziggs"},
                          @{@"imageName": @"Zilean.png",@"championName":@"Zilean"},
                          @{@"imageName": @"Zyra.png",@"championName":@"Zyra"},
                          ];
}
@end
