module ApplicationHelper

  ROUTE = [
    'VFK-IV', 'I30-3A', '209G-D', 'NC-N3F', 'II-509', 'C7Y-7Z',
    'X-Z4DA', '33RB-0', '3OAT-Q', 'N-TFXK', 'DKUK-G', 'ZOYW-O',
    'RO0-AF', '5W3-DG', '7T6P-C', '5W3-DG', 'LT-DRO', '8S28-3',
    '3T7-M8', 'MZ1E-P', 'J1AU-9', 'X3-PBC', 'U-TJ7Y', 'A4L-A2',
    'CZDJ-1', 'UJY-HE', 'RG9-7U', 'CZDJ-1', 'A4L-A2', 'UEJX-G',
    'WUZ-WM', '4N-BUI', '9CK-KZ', 'VPLL-N', 'N2IS-B', 'VPLL-N',
    'XCBK-X', 'GY5-26', '43B-O1', '5S-KXA', 'O-2RNZ', '3JN9-Q',
    'LEK-N5', 'OWXT-5', '0V0R-R', 'LEK-N5', 'E3UY-6', 'ZZZR-5',
    'MXXR-9', '3QE-9Q', 'E-FIC0', 'YZ-UKA', '85-B52', 'S-DN5M',
    'JU-OWQ', 'CCP-US', '2R-CRW', 'YA0-XJ', 'TXME-A', 'QPO-WI',
    'FO8M-2', 'QPO-WI', 'TXME-A', 'YA0-XJ', '2-KF56'
  ]

  def current_route
    "#{ params[:controller] }##{ params[:action] }"
  end

  def in_route_system?
    ROUTE.include? current_system
  end

  def system_at index

    route_length = ROUTE.length
    new_index = ROUTE.index(current_system) + index

    if new_index < 0
      new_index += route_length
    elsif new_index > route_length
      new_index -= route_length
    end

    return ROUTE[new_index]

  end

end
