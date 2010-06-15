//
//  TableViewController.m

#import "TableViewController.h"
#import "FirstViewController.h"


@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
	
	// Creating the UISearchBar and adding it to the UINavigationController
	UISearchBar *theSearchBar = [[UISearchBar alloc] initWithFrame:CGRectMake(0.0f,0.0f,320.0f,0.0f)];
	[theSearchBar sizeToFit];
	self.navigationItem.titleView = theSearchBar;
	self.navigationItem.titleView.autoresizingMask = UIViewAutoresizingFlexibleWidth;
	[theSearchBar release];
}

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


#pragma mark Table view methods

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}


// Customize the number of rows in the table view.
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}


// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
    }
    
    cell.textLabel.text = @"first cell";
	
    return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    // Navigation logic may go here. Create and push another view controller.
	FirstViewController *anotherViewController = [[FirstViewController alloc] initWithNibName:@"SecondView" bundle:nil];
	[self.navigationController pushViewController:anotherViewController animated:YES];
	[anotherViewController release];
}

- (void)dealloc {
    [super dealloc];
}


@end

