//
//  CountersCollectionViewController.m
//  counterPickLoL
//
//  Created by christian ambriz on 9/1/14.
//  Copyright (c) 2014 christian ambriz. All rights reserved.
//

#import "CountersCollectionViewController.h"
#import "CounterHeaderCell.h"
#import "CounterSelectCell.h"
#import "CounterChampionsCell.h"


typedef NS_ENUM(NSUInteger, Row) {
    WeakAgainst,
    StrongAgainst
};
@interface CountersCollectionViewController ()
@property (strong, nonatomic) IBOutlet UICollectionView *collectionView;

@end

@implementation CountersCollectionViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self initializeChampionWeakAgainst];
    [self initializeChampionStrongAgainst];
    // Do any additional setup after loading the view.
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
    return 2;
}

-(UICollectionViewCell *) collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    //customCell.championNameLabel.text = champion[@"championName"];
    //customCell.championPictureImageView.image = [UIImage imageNamed:champion[@"imageName"]];
    CounterChampionsCell *counterChampionCell;
    NSArray *championWeakCounters = self.championWeakAgainst[self.headerChampionLabelText];
    NSArray *championStrongCounters = self.championStrongAgainst[self.headerChampionLabelText];
    NSMutableString *championTypeHeader = [NSMutableString stringWithString:self.headerChampionLabelText];
    counterChampionCell = [collectionView dequeueReusableCellWithReuseIdentifier:@"counterChampionsCell" forIndexPath:indexPath];
    switch (indexPath.row) {
        case WeakAgainst:
            [championTypeHeader appendString:@"'s Weak Against"];
            counterChampionCell.counterType.text = championTypeHeader;
            
            counterChampionCell.counterLabelOne.text = championWeakCounters[0];
            counterChampionCell.counterLabelTwo.text = championWeakCounters[1];
            counterChampionCell.counterLabelThree.text = championWeakCounters[2];
            counterChampionCell.counterLabelFour.text = championWeakCounters[3];
            counterChampionCell.counterLabelFive.text = championWeakCounters[4];
            
            counterChampionCell.counterImageOne.image = [UIImage imageNamed:championWeakCounters[0]];
            counterChampionCell.counterImageTwo.image = [UIImage imageNamed:championWeakCounters[1]];
            counterChampionCell.counterImageThree.image = [UIImage imageNamed:championWeakCounters[2]];
            counterChampionCell.counterImageFour.image = [UIImage imageNamed:championWeakCounters[3]];
            counterChampionCell.counterImageFive.image = [UIImage imageNamed:championWeakCounters[4]];
            break;
        case StrongAgainst:
            [championTypeHeader appendString:@"'s Strong Against"];
            counterChampionCell.counterType.text = championTypeHeader;
            
            counterChampionCell.counterLabelOne.text = championStrongCounters[0];
            counterChampionCell.counterLabelTwo.text = championStrongCounters[1];
            counterChampionCell.counterLabelThree.text = championStrongCounters[2];
            counterChampionCell.counterLabelFour.text = championStrongCounters[3];
            counterChampionCell.counterLabelFive.text = championStrongCounters[4];
            
            counterChampionCell.counterImageOne.image = [UIImage imageNamed:championStrongCounters[0]];
            counterChampionCell.counterImageTwo.image = [UIImage imageNamed:championStrongCounters[1]];
            counterChampionCell.counterImageThree.image = [UIImage imageNamed:championStrongCounters[2]];
            counterChampionCell.counterImageFour.image = [UIImage imageNamed:championStrongCounters[3]];
            counterChampionCell.counterImageFive.image = [UIImage imageNamed:championStrongCounters[4]];
            break;
        default:
            break;
    }
    return counterChampionCell;
}
-(UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath
{
    UICollectionReusableView *cell;
    NSMutableString *championToCounter = [NSMutableString stringWithString:self.headerChampionLabelText];
    [championToCounter appendString:@" Counters"];
    if (kind == UICollectionElementKindSectionHeader) {
        CounterHeaderCell *reusableView = [collectionView dequeueReusableSupplementaryViewOfKind:kind withReuseIdentifier:@"counterHeader" forIndexPath:indexPath];
        reusableView.counterChampionImage.image = [UIImage imageNamed:self.headerChampionImageName];
        reusableView.counterChampionLabel.text = championToCounter;
        NSLog(@"label2 = %@", self.headerChampionLabelText);
        cell = reusableView;
    }
    return cell;
}

-(void) initializeChampionWeakAgainst
{
    self.championWeakAgainst = @{
                                 @"Aatrox": @[@"Jax",@"Riven",@"Teemo",@"Renekton",@"Fiora"],
                                 @"Ahri": @[@"LeBlanc",@"Annie",@"Talon",@"Kassadin",@"Diana"],
                                 @"Akali": @[@"LeeSin",@"Garen",@"Mordekaiser",@"Annie",@"Diana"],
                                 @"Alistar": @[@"Janna",@"Vayne",@"Lulu",@"Soraka",@"Morgana"],
                                 @"Amumu": @[@"Shyvana",@"LeeSin",@"Shaco",@"Khazix",@"XinZhao"],
                                 @"Anivia": @[@"Fizz",@"Diana",@"Orianna",@"LeBlanc",@"Syndra"],
                                 @"Annie": @[@"Orianna",@"Morgana",@"Galio",@"LeBlanc",@"Kassadin"],
                                 @"Ashe": @[@"Ezreal",@"Graves",@"Caitlyn",@"Sivir",@"Khazix"],
                                 @"Blitzcrank": @[@"Alistar",@"Leona",@"Thresh",@"Ezreal",@"Morgana"],
                                 @"Brand": @[@"Kassadin",@"Fizz",@"LeBlanc",@"Galio",@"Lux"],
                                 @"Braum": @[@"Morgana",@"Alistar",@"Vayne",@"Zyra",@"Karma"],
                                 @"CaitLyn": @[@"Sivir",@"Jinx",@"Tristana",@"Lucian",@"KogMaw"],
                                 @"Cassiopeia": @[@"Galio",@"LeBlanc",@"Fizz",@"Talon",@"Ahri"],
                                 @"ChoGath": @[@"Warwick",@"Vayne",@"Kayle",@"KogMaw",@"Garen"],
                                 @"Corki": @[@"Caitlyn",@"Draven",@"Varus",@"Lucian",@"KogMaw"],
                                 @"Darius": @[@"Tryndamere",@"Kayle",@"Jayce",@"Yorick",@"Aatrox"],
                                 @"Diana": @[@"Riven",@"Swain",@"Irelia",@"Syndra",@"Mordekaiser"],
                                 @"DrMundo": @[@"Olaf",@"KogMaw",@"Darius",@"Riven",@"Tristana"],
                                 @"Draven": @[@"Varus",@"Caitlyn",@"Thresh",@"Blitzcrank",@"Nami"],
                                 @"Elise": @[@"Kassadin",@"Yorick",@"LeBlanc",@"Malzahar",@"Mordekaiser"],
                                 @"Evelynn": @[@"Ryze",@"LeeSin",@"TwistedFate",@"Cassiopeia",@"MordeKaiser"],
                                 @"Ezreal": @[@"Ezreal",@"Draven",@"Vayne",@"Caitlyn",@"Graves"],
                                 @"Fiddlesticks": @[@"Janna",@"XinZhao",@"Diana",@"Alistar",@"Kassadin"],
                                 @"Fiora": @[@"Jax",@"Malphite",@"Darius",@"Renekton",@"Pantheon"],
                                 @"Fizz": @[@"Ryze",@"Diana",@"Mordekaiser",@"Akali",@"Kayle"],
                                 @"Galio": @[@"Janna",@"Udyr",@"Yasuo",@"Braum",@""],
                                 @"Gangplank": @[@"Pantheon",@"Fiora",@"Udyr",@"Irelia",@"Riven"],
                                 @"Garen": @[@"Teemo",@"Jayce",@"Elise",@"Darius",@"Yorick"],
                                 @"Gnar": @[@"Riven",@"Teemo",@"Fiora",@"Irelia",@"Nidalee"],
                                 @"Gragas": @[@"Fizz",@"Yasuo",@"Ahri",@"LeBlanc",@"Mordekaiser"],
                                 @"Graves": @[@"Caitlyn",@"Sivir",@"Corki",@"Draven",@"Urgot"],
                                 @"Hecarim": @[@"Nasus",@"Sejuani",@"Aatrox",@"Vi",@"Shyvana"],
                                 @"Heimerdinger": @[@"Syndra",@"Ziggs",@"Lux",@"Xerath",@"Velkoz"],
                                 @"Irelia": @[@"Olaf",@"Jax",@"Renekton",@"Udyr",@"Darius"],
                                 @"Janna": @[@"Sona",@"Sivir",@"Nami",@"Aatrox",@"Diana"],
                                 @"JarvanIV": @[@"Yorick",@"Shen",@"Jax",@"Vi",@"Elise"],
                                 @"Jax": @[@"Malphite",@"Renekton",@"Garen",@"Jayce",@"Singed"],
                                 @"Jayce": @[@"Yorick",@"Irelia",@"Nidalee",@"Fiora",@"Pantheon"],
                                 @"Jinx": @[@"Ezreal",@"Corki",@"Sivir",@"Lucian",@"Varus"],
                                 @"Karma": @[@"Veigar",@"Nami",@"Talon",@"Xerath",@"Swain"],
                                 @"Karthus": @[@"Kassadin",@"Katarina",@"Fizz",@"Ahri",@"Soraka"],
                                 @"Kassadin": @[@"Talon",@"Fizz",@"Zed",@"Heimerdinger",@"Mordekaiser"],
                                 @"Katarina": @[@"Diana",@"Alistar",@"Malzahar",@"Kassadin",@"Galio"],
                                 @"Kayle": @[@"Anivia",@"Pantheon",@"Xinzhao",@"Annie",@"Ziggs"],
                                 @"Kennen": @[@"Ryze",@"Janna",@"Swain",@"Diana",@"Yorick"],
                                 @"Khazix": @[@"Leesin",@"Rengar",@"Jayce",@"Jax",@"Yorick"],
                                 @"KogMaw": @[@"Jinx",@"Blitzcrank",@"Akali",@"LeBlanc",@"Sivir"],
                                 @"LeBlanc": @[@"Galio",@"Fizz",@"Zed",@"Syndra",@"Diana"],
                                 @"LeeSin": @[@"Trundle",@"Udyr",@"Renekton",@"Garen",@"Pantheon"],
                                 @"Leona": @[@"Morgana",@"Alistar",@"Janna",@"Lulu",@"Thresh"],
                                 @"Lissandra": @[@"Kassadin",@"Diana",@"Anivia",@"Brand",@"Leblanc"],
                                 @"Lucian": @[@"Vayne",@"Draven",@"Ezreal",@"Caitlyn",@"Tristana"],
                                 @"Lulu": @[@"Soraka",@"Syndra",@"Sona",@"Ziggs",@"Morgana"],
                                 @"Lux": @[@"Talon",@"Fizz",@"Katarina",@"Zed",@"Yasuo"],
                                 @"Malphite": @[@"Rumble",@"ChoGath",@"Vladimir",@"Yorick",@"Kennen"],
                                 @"Malzahar": @[@"Gangplank",@"Lux",@"Syndra",@"LeBlanc",@"Talon"],
                                 @"Maokai": @[@"Lulu",@"Shyvana",@"DrMundo",@"LeeSin",@"Shaco"],
                                 @"MasterYi": @[@"Jax",@"Teemo",@"Aatroz",@"Xinzhao",@"Rammus"],
                                 @"MissFortune": @[@"Tristana",@"Draven",@"Caitlyn",@"Varus",@"Braum"],
                                 @"Mordekaiser": @[@"Garen",@"Zyra",@"Swain",@"Yorick",@"Malzahar"],
                                 @"Morgana": @[@"Talon",@"Vladimir",@"Katarina",@"Fizz",@"Karma"],
                                 @"Nami": @[@"Lulu",@"Ezreal",@"Leona",@"Fizz",@"Blitzcrank"],
                                 @"Nasus": @[@"Teemo",@"Riven",@"Garen",@"Rumble",@"Darius"],
                                 @"Nautilus": @[@"Shyvana",@"Udyr",@"LeeSin",@"Trundle",@"Vi"],
                                 @"Nidalee": @[@"Yasuo",@"Pantheon",@"Akali",@"Fizz",@"LeBlanc"],
                                 @"Nocturne": @[@"Olaf",@"Graves",@"Shyvana",@"LeeSin",@"Vi"],
                                 @"Nunu": @[@"Cassiopeia",@"Sona",@"Janna",@"Riven",@"Sivir"],
                                 @"Olaf": @[@"Kennen",@"Kayle",@"Yorick",@"Volibear",@"Pantheon"],
                                 @"Orianna": @[@"LeBlanc",@"Syndra",@"Ahri",@"Diana",@"Zed"],
                                 @"Pantheon": @[@"Shen",@"Udyr",@"Yorick",@"Elise",@"Malphite"],
                                 @"Poppy": @[@"Olaf",@"Darius",@"Irelia",@"Renekton",@"Rumble"],
                                 @"Quinn": @[@"Caitlyn",@"Varus",@"MissFortune",@"Tristana",@"Draven"],
                                 @"Rammus": @[@"Trundle",@"Vi",@"Shyvana",@"Olaf",@"DrMundo"],
                                 @"Renekton": @[@"Garen",@"Ryze",@"Vayne",@"Elise",@"Shyvana"],
                                 @"Riven": @[@"Garen",@"Olaf",@"Renekton",@"Jax",@"Kennen"],
                                 @"Ryze": @[@"Cassiopeia",@"Xerath",@"Brand",@"Ziggs",@"Lux"],
                                 @"Sejuani": @[@"XinZhao",@"LeeSin",@"Morgana",@"Olaf",@"Vi"],
                                 @"Shaco": @[@"LeeSin",@"Warwick",@"Vi",@"Riven",@"Olaf"],
                                 @"Shen": @[@"Yorick",@"Warwick",@"Jayce",@"Vladimir",@"Jax"],
                                 @"Shyvana": @[@"Olaf",@"Teemo",@"Darius",@"Trundle",@"Elise"],
                                 @"Singed": @[@"Teemo",@"Vladimir",@"Jayce",@"Kayle",@"Kennen"],
                                 @"Sion": @[@"Morgana",@"Teemo",@"Nasus",@"Jax",@"Darius"],
                                 @"Sivir": @[@"Vayne",@"Draven",@"Twitch",@"Khazix",@"Corki"],
                                 @"Skarner": @[@"Morgana",@"Shyvana",@"Olaf",@"Gangplank",@"Xinzhao"],
                                 @"Sona": @[@"Blitzcrank",@"Leona",@"Thresh",@"Draven",@"MissFortune"],
                                 @"Soraka": @[@"MissFortune",@"Tristana",@"Gnar",@"Blitzcrank",@"Varus"],
                                 @"Swain": @[@"Viktor",@"Fizz",@"Cassiopeia",@"Syndra",@"LeBlanc"],
                                 @"Syndra": @[@"Fizz",@"Talon",@"Lux",@"Kayle",@"Akali"],
                                 @"Talon": @[@"LeeSin",@"Diana",@"Riven",@"Kayle",@"Pantheon"],
                                 @"Taric": @[@"Sivir",@"Lulu",@"Nami",@"Morgana",@"Leona"],
                                 @"Teemo": @[@"Yorick",@"Pantheon",@"Jayce",@"Rumble",@"Zed"],
                                 @"Thresh": @[@"Lulu",@"Alistar",@"Lucian",@"Morgana",@"Leona"],
                                 @"Tristana": @[@"Corki",@"Draven",@"Caitlyn",@"Diana",@"Twitch"],
                                 @"Trundle": @[@"Sona",@"Teemo",@"Jax",@"Pantheon",@"Kennen"],
                                 @"Tryndamere": @[@"Teemo",@"Jax",@"Malphite",@"Renekton",@"Rammus"],
                                 @"TwisteFate": @[@"Fizz",@"Diana",@"Ahri",@"LeBlanc",@"Kassadin"],
                                 @"Twitch": @[@"Caitlyn",@"LeeSin",@"Corki",@"Jinx",@"Quinn"],
                                 @"Udyr": @[@"Ashe",@"Trundle",@"Teemo",@"Kayle",@"Jax"],
                                 @"Urgot": @[@"Soraka",@"Sivir",@"Nami",@"Yasuo",@"Thresh"],
                                 @"Varus": @[@"Graves",@"Lucian",@"Sivir",@"Tristana",@"Blitzcrank"],
                                 @"Vayne": @[@"Quinn",@"Graves",@"Ashe",@"Varus",@"Caitlyn"],
                                 @"Veigar": @[@"Fizz",@"Ryze",@"Talon",@"Zed",@"LeBlanc"],
                                 @"Velkoz": @[@"Yasuo",@"LeBlanc",@"Fizz",@"Talon",@"Zed"],
                                 @"Vi": @[@"Jax",@"Riven",@"Darius",@"LeeSin",@"Karma"],
                                 @"Viktor": @[@"Syndra",@"LeBlanc",@"Fizz",@"Talon",@"Ziggs"],
                                 @"Vladimir": @[@"Swain",@"Riven",@"Irelia",@"Malzahar",@"Fiddlesticks"],
                                 @"Volibear": @[@"Teemo",@"Jayce",@"Kayle",@"Darius",@"Kennen"],
                                 @"Warwick": @[@"Yorick",@"Udyr",@"Kayle",@"Olaf",@"Gangpank"],
                                 @"Wukong": @[@"LeeSin",@"Darius",@"Garen",@"Olaf",@"Renekton"],
                                 @"Xerath": @[@"Ahri",@"Fizz",@"LeBlanc",@"Zed",@"Syndra"],
                                 @"Xinzhao": @[@"Jax",@"Malphite",@"Volibear",@"Teemo",@"Pantheon"],
                                 @"Yorick": @[@"ChoGath",@"Trundle",@"XinZhao",@"Riven",@"Renekton"],
                                 @"Zac": @[@"Vi",@"Zilean",@"Riven",@"Vladimir",@"Fizz"],
                                 @"Zed": @[@"Kayle",@"Fizz",@"Tryndamere",@"Singed",@"Lissandra"],
                                 @"Ziggs": @[@"LeBlanc",@"Yasuo",@"Talon",@"Fizz",@"Zed"],
                                 @"Zilean": @[@"Morgana",@"Nami",@"Kassadin",@"Soraka",@"Sivir"],
                                 @"Zyra": @[@"Fizz",@"Katarina",@"LeBlanc",@"Talon",@"Akali"],
                                 };
}

-(void) initializeChampionStrongAgainst
{
    self.championStrongAgainst = @{
                                   @"Aatrox": @[@"Darius",@"Yasuo",@"Zed",@"MasterYi",@"Katarina"],
                                   @"Ahri": @[@"Xerath",@"Karthus",@"Orianna",@"TwistedFate",@"Katarina"],
                                   @"Akali": @[@"Fizz",@"Yasuo",@"Ahri",@"Karthus",@"Nidalee"],
                                   @"Alistar": @[@"Blitzcrank",@"Leona",@"Tresh",@"Katarina",@"Braum"],
                                   @"Amumu": @[@"Blitzcrank",@"Yasuo",@"Renekton",@"MasterYi",@"Wukong"],
                                   @"Anivia": @[@"Ryze",@"Kayle",@"Lissandra",@"Karthus",@"Teemo"],
                                   @"Annie": @[@"Ahri",@"Fizz",@"Akali",@"Kayle",@"Yasuo"],
                                   @"Ashe": @[@"Vayne",@"Jinx",@"Caitlyn",@"Nocturne",@"Rengar"],
                                   @"Blitzcrank": @[@"Sona",@"Draven",@"KogMaw",@"Soraka",@"Caitlyn"],
                                   @"Brand": @[@"Annie",@"Ryze",@"Katarina",@"Lissandra",@"Keimerdinger"],
                                   @"Blitzcrank": @[@"Lucian",@"Thresh",@"Caitlyn",@"Nami",@"MissFortune"],
                                   @"Vayne": @[@"Ezreal",@"Graves",@"Corki",@"Quinn",@"Draven"],
                                   @"Cassiopeia": @[@"Ryze",@"Swain",@"Nunu",@"Akali",@"Vladimir"],
                                   @"ChoGath": @[@"Yorick",@"Katarina",@"Malphite",@"Darius",@"MasterYi"],
                                   @"Corki": @[@"Jinx",@"Tristana",@"Vayne",@"Twitch",@"Ezreal"],
                                   @"Darius": @[@"Nasus",@"Riven",@"Yasuo",@"Irelia",@"DrMundo"],
                                   @"Diana": @[@"Katarina",@"Fizz",@"Ahri",@"Orianna",@"TwistedFate"],
                                   @"DrMundo": @[@"Jax",@"Amumu",@"Nasus",@"Renekton",@"Tryndamere"],
                                   @"Draven": @[@"Ezreal",@"Vayne",@"Lucian",@"Tristana",@"Jinx"],
                                   @"Elise": @[@"Renekton",@"Garen",@"Pantheon",@"Darius",@"Jax"],
                                   @"Evelynn": @[@"Karthus",@"Amumu",@"Morgana",@"Nidalee",@"Lux"],
                                   @"Ezreal": @[@"Jinx",@"Ashe",@"Lucian",@"Tristana",@"Blitzcrank"],
                                   @"Fiddlesticks": @[@"Katarina",@"Vladimir",@"Akali",@"Fizz",@"MasterYi"],
                                   @"Fiora": @[@"Yasuo",@"Rengar",@"Riven",@"Jayce",@"Aatrox"],
                                   @"Fizz": @[@"TwistedFate",@"Zed",@"Anivia",@"Syndra",@"Karthus"],
                                   @"Galio": @[@"LeBlanc",@"Cassiopeia",@"Brand",@"Fizz",@"Veigar"],
                                   @"Gangplank": @[@"Kassadin",@"Nasus",@"Morgana",@"Teemo",@"Aatrox"],
                                   @"Garen": @[@"Riven",@"Renekton",@"Jax",@"Akali",@"Nasus"],
                                   @"Gnar": @[@"Jax",@"Soraka",@"Nasus",@"Renekton",@"Darius"],
                                   @"Gragas": @[@"Lux",@"Katarina",@"Orianna",@"Katarina",@"Kayle"],
                                   @"Graves": @[@"Ezrea",@"Varus",@"Vayne",@"Ashe",@"Lucian"],
                                   @"Hecarim": @[@"Khazix",@"Akali",@"Soraka",@"Janna",@"Pantheon"],
                                   @"Heimerdinger": @[@"Kassadin",@"Katarina",@"Diana",@"Akali",@"Fizz"],
                                   @"Irelia": @[@"Zed",@"Jayce",@"Diana",@"Vladimir",@"Riven"],
                                   @"Janna": @[@"Kennen",@"Leona",@"Alistar",@"Fiddlesticks",@"Thresh"],
                                   @"JarvanIV": @[@"Vladimir",@"Kayle",@"Jayce",@"Olaf",@"Ryze"],
                                   @"Jax": @[@"Yasuo",@"Aatrox",@"Fiora",@"MasterYi",@"Riven"],
                                   @"Jayce": @[@"Darius",@"Jax",@"Teemo",@"Garen",@"Singed"],
                                   @"Jinx": @[@"Caitlyn",@"KogMaw",@"Twitch",@"Ashe",@"Tristana"],
                                   @"Karma": @[@"Morgana",@"Vi",@"LeBlanc",@"Leona",@"Fizz"],
                                   @"Karthus": @[@"Yasuo",@"Heimerdinger",@"Teemo",@"Aatrox",@"Velkoz"],
                                   @"Kassadin": @[@"Karthus",@"Katarina",@"Brand",@"Lissandra",@"Ahri"],
                                   @"Katarina": @[@"Karthus",@"Lux",@"Akali",@"Morgana",@"Nidalee"],
                                   @"Kayle": @[@"Zed",@"Darius",@"Fizz",@"Yasuo",@"Olaf"],
                                   @"Riven": @[@"Olaf",@"Darius",@"Riven",@"Singed",@"Renekton"],
                                   @"Khazix": @[@"Kassadin",@"Ashe",@"Yasuo",@"TwistedFate",@"Fizz"],
                                   @"KogMaw": @[@"Caitlyn",@"DrMundo",@"Vayne",@"Draven",@"Ashe"],
                                   @"LeBlanc": @[@"Ahri",@"Ziggs",@"Orianna",@"Katarina",@"Karthus"],
                                   @"LeeSin": @[@"Akali",@"Khazix",@"Shaco",@"Talno",@"Twitch"],
                                   @"Leona": @[@"Blitzcrank",@"Sona",@"Caitlyn",@"Thresh",@"Varus"],
                                   @"Lissandra": @[@"Katarina",@"Fizz",@"Zed",@"Akali",@"Yasuo"],
                                   @"Lucian": @[@"Varus",@"Thresh",@"Nasus",@"KogMaw",@"Ashe"],
                                   @"Lulu": @[@"Katarina",@"Thresh",@"Maokai",@"Nami",@"Braum"],
                                   @"Lux": @[@"Karthus",@"Ryze",@"Annie",@"Malzahar",@"Heimerdinger"],
                                   @"Malphite": @[@"Jax",@"Fiora",@"Tryndamere",@"XinZhao",@"Pantheon"],
                                   @"Malzahar": @[@"Katarina",@"Vladimir",@"Ahri",@"Yasuo",@"Fizz"],
                                   @"Maokai": @[@"Karthus",@"Katarina",@"Elise",@"Syndra",@"Darius"],
                                   @"MasterYi": @[@"Lux",@"Yasuo",@"Karthus",@"Katarina",@"Ashe"],
                                   @"MissFortune": @[@"Ezreal",@"Vayne",@"Soraka",@"Graves",@"DrMundo"],
                                   @"Mordekaiser": @[@"Diana",@"Fizz",@"LeBlanc",@"Kassadin",@"Morgana"],
                                   @"Morgana": @[@"Leona",@"Braum",@"Thresh",@"Blitzcrank",@"Vi"],
                                   @"Nami": @[@"Draven",@"Taric",@"Thresh",@"Urgot",@"Braum"],
                                   @"Nasus": @[@"Hecarim",@"Jax",@"Irelia",@"Tryndamere",@"Aatrox"],
                                   @"Nautilus": @[@"Katarina",@"Evelynn",@"Malphite",@"Nasus",@"Jax"],
                                   @"NIdalee": @[@"Jayce",@"Garen",@"Singed",@"Darius",@"Gnar"],
                                   @"Nocturne": @[@"TwistedFate",@"Darius",@"Xinzhao",@"Veigar",@"Shen"],
                                   @"Nunu": @[@"Yorick",@"Heimerdinger",@"Jax",@"Tryndamere",@"Singed"],
                                   @"Olaf": @[@"Irelia",@"Riven",@"Shyvana",@"Nasus",@"Poppy"],
                                   @"Orianna": @[@"Annie",@"Ryze",@"Anivia",@"Fizz",@"Karthus"],
                                   @"Pantheon": @[@"Gangplank",@"Teemo",@"Jax",@"Fiora",@"Nidalee"],
                                   @"Poppy": @[@"Gangplank",@"Riven",@"Jax",@"Khazix",@"Nasus"],
                                   @"Quinn": @[@"Vayne",@"Jinx",@"Ashe",@"Lucian",@"Twitch"],
                                   @"Rammus": @[@"Tryndamere",@"MasterYi",@"Fiora",@"Yasuo",@"Aatrox"],
                                   @"Renekton": @[@"Jax",@"Riven",@"Irelia",@"Akali",@"Darius"],
                                   @"Riven": @[@"Nasus",@"Yasuo",@"Aatrox",@"Vladimir",@"Gnar"],
                                   @"Rumble": @[@"Malphite",@"Nasus",@"teemo",@"Zed",@"Akali"],
                                   @"Ryze": @[@"Fizz",@"Renekton",@"Kennen",@"Jax",@"Ahri"],
                                   @"Sejuani": @[@"Hecarim",@"Katarina",@"Fiddlesticks",@"Darius",@"Evelynn"],
                                   @"Shaco": @[@"Amumu",@"MasterYi",@"Maokai",@"Xerath",@"Twitch"],
                                   @"Shen": @[@"Pantheon",@"Malphite",@"Renekton",@"JarvanIV",@"Zed"],
                                   @"Shyvana": @[@"Renekton",@"Amumu",@"Maokai",@"Jax",@"Riven"],
                                   @"Singed": @[@"Jax",@"Zed",@"Fiora",@"Irelia",@"Tryndamere"],
                                   @"Sion": @[@"LeBlanc",@"Kassadin",@"Talon",@"Irelia",@"Riven"],
                                   @"Sivir": @[@"Caitlyn",@"Jinx",@"Graves",@"Blitzcrank",@"Ashe"],
                                   @"Skarner": @[@"Mordekaiser",@"Vi",@"Rengar",@"Jax",@"MasterYi"],
                                   @"Sona": @[@"Trundle",@"Janna",@"Nunu",@"Lulu",@"Vayne"],
                                   @"Soraka": @[@"Karthus",@"Yasuo",@"Lulu",@"Urgot",@"Katarina"],
                                   @"Swain": @[@"Vladimir",@"Ahri",@"Diana",@"Kassadin",@"Akali"],
                                   @"Syndra": @[@"Heimerdinger",@"Orianna",@"LeBlanc",@"Diana",@"Ziggs"],
                                   @"Talon": @[@"Lux",@"Ahri",@"Morgana",@"Veigar",@"Kassadin"],
                                   @"Taric": @[@"Zed",@"MissFortune",@"Blitzcrank",@"Vayne",@"Thresh"],
                                   @"Teemo": @[@"Darius",@"Nasus",@"Garen",@"Singed",@"Tryndamere"],
                                   @"Thresh": @[@"Blitzcrank",@"Draven",@"Sona",@"Caitlyn",@"Varus"],
                                   @"Tristana": @[@"MissFortune",@"Vayne",@"Varus",@"Jinx",@"Soraka"],
                                   @"Trundle": @[@"LeeSin",@"Renekton",@"Yorick",@"DrMundo",@"Shyvana"],
                                   @"Tryndamere": @[@"Aatrox",@"Yasuo",@"Zed",@"Riven",@"Khazix"],
                                   @"TwistedFate": @[@"Ryze",@"Evelynn",@"Ziggs",@"Lissandra",@"Aatrox"],
                                   @"Twitch": @[@"Ezreal",@"Vayne",@"Sivir",@"Ashe",@"Tristana"],
                                   @"Udyr": @[@"LeeSin",@"Irelia",@"Pantheon",@"Gangplank",@"Galio"],
                                   @"Urgot": @[@"Graves",@"Vayne",@"Ashe",@"Corki",@"Jinx"],
                                   @"Varus": @[@"Draven",@"Jinx",@"Caitlyn",@"Vayne",@"Ezreal"],
                                   @"Vayne": @[@"Lucian",@"Ezreal",@"Renekton",@"Maokai",@"Sivir"],
                                   @"Veigar": @[@"Karthus",@"Ahri",@"Karma",@"LeBlanc",@"TwistedFate"],
                                   @"Velkoz": @[@"Heimerdinger",@"Teemo",@"TwistedFate",@"Ryze",@"Orianna"],
                                   @"Vi": @[@"Zac",@"Katarina",@"JarvanIV",@"Malphite",@"Shyvana"],
                                   @"Viktor": @[@"Swain",@"Katarina",@"Ryze",@"Rumble",@"Karthus"],
                                   @"Vladimir": @[@"Singed",@"Shen",@"Fiora",@"Zed",@"Morgana"],
                                   @"Volibear": @[@"Olaf",@"Jax",@"Xinzhao",@"Riven",@"Irelia"],
                                   @"Warwick": @[@"ChoGath",@"Shen",@"Singed",@"Jax",@"Ahri"],
                                   @"Wukong": @[@"Zed",@"Jayce",@"Teemo",@"Jax",@"MasterYi"],
                                   @"Xerath": @[@"Ryze",@"Annie",@"Karthus",@"Brand",@"Orianna"],
                                   @"Xinzhao": @[@"Vladimir",@"Yorick",@"Darius",@"Jayce",@"Rumble"],
                                   @"Yorick": @[@"Teemo",@"Darius",@"Jayce",@"Garen",@"Rumble"],
                                   @"Zac": @[@"Malphite",@"Jax",@"Katarina",@"Soraka",@"Singed"],
                                   @"Zed": @[@"kassadin",@"Lux",@"Orianna",@"Katarina",@"Veigar"],
                                   @"Ziggs": @[@"Ryze",@"Orianna",@"Kayle",@"Karthus",@"Lux"],
                                   @"Zilean": @[@"Zac",@"Yasuo",@"Zed",@"Sydra",@"Darius"],
                                   @"Zyra": @[@"Mordekaiser",@"Braum",@"Ryze",@"Leona",@"Thresh"],
                                   };
}


@end
