using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace WingtipToys.Models
{
  public class Branch
  {
    [ScaffoldColumn(false)]
    public int BranchID { get; set; }

    [ScaffoldColumn(false)]
    public string BranchName { get; set; }

    [ScaffoldColumn(false)]
    public string StreetNo { get; set; }

    [ScaffoldColumn(false)]
    public string Street { get; set; }

    [ScaffoldColumn(false)]
    public string Suburb { get; set; }

    [ScaffoldColumn(false)]
    public string State { get; set; }
    [ScaffoldColumn(false)]
    public string Country { get; set; }

    [ScaffoldColumn(false)]
    public string Username { get; set; }

    }
}